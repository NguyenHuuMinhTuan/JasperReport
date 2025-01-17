package my.tester.app

import com.trianh.Account
import grails.gorm.transactions.Transactional

@Transactional
class InitializationService {

   static initialize(){
     initAccount()

   }
    private static initAccount(){
        if(Account.count() == 0 ){
            Account account = new Account()
            account.username = "ADMIN"
            account.password = "202cb962ac59075b964b07152d234b70"
            account.email = "Minhtuan7643@gmail.com"
            account.type_account = 1
            account.save(flash:true)

        }
    }
}
