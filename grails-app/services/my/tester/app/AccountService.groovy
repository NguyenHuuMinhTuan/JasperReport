package my.tester.app

import com.trianh.Account
import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

import java.lang.reflect.Member
import java.security.MessageDigest

@Transactional
class AccountService {

    def save(GrailsParameterMap params) {
        print(params)

        try {
            def password = params.password;
            def md5Password = password ? md5Hash(password) : null
            def account = new Account(params)
            account.password = md5Password
            if (account.save(flush: true)) {
                return [isSuccess: true, errors: null]
            } else {
                return [isSuccess: false, errors: account.errors]
            }
        } catch (Exception e) {
            return [isSuccess: false, errors: [e.message]]
        }


    }


    def update(Account account, GrailsParameterMap params) {
        def response = [isSuccess: false, model: account]
        account.properties = params;
        if (account.validate()) {
            def password = params.password;
            def md5Password = password ? md5Hash(password) : null
            account.password = md5Password
            account.save(flush: true);
            if (!account.hasErrors()) {
                response.isSuccess = false;
                response.model=account.errors
                print(account.hasErrors())
            }else{
                response.isSuccess=true;
            }

        }else{
            response.isSuccess = false
            response.model = account.errors
        }
        return response
    }

    def getId(Serializable id) {
        return Account.findById(id);
    }

    def delete(Account account) {
        try {
            account.delete(flash: true);
        }
        catch (Exception e) {
            print(e.getMessage())
            return false;
        }
        return true;


    }

    def list(GrailsParameterMap params) {
        params.max = params.max ?: 10
        def criteria = Account.createCriteria()
        def accounts = criteria.list(max: params.max, offset: params.offset) {
            // Thêm các điều kiện lọc nếu cần
        }
        return [list: accounts, count: accounts.totalCount]
    }

    private String md5Hash(String input) {
        MessageDigest digest = MessageDigest.getInstance("MD5")
        digest.update(input.bytes)
        return digest.digest().encodeHex().toString()
    }


}
