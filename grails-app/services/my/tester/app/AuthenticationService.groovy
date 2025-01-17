package my.tester.app

import com.AppUtil
import com.trianh.Account
import grails.gorm.transactions.Transactional

@Transactional
class AuthenticationService {
    private static final String  AUTHORIZED = "AUTHORIZED";

    def setMemberAuthorization(Account account) {
        def authorization = [isLoggedIn: true, account: account]
        AppUtil.getSession()[AUTHORIZED] = authorization
    }

    def doLogin(String username, String password){
        password = password.encodeAsMD5();
        Account account = Account.findByUsernameAndPassword(username,password);
        if(account){
            setMemberAuthorization(account)
            print(account)
            return true;
        }else
            return false;
    }
    boolean isAuthenticated() {
        def session = AppUtil.getSession()
        if (session && session[AUTHORIZED]?.isLoggedIn) {
            return true
        }
        return false
    }
}
