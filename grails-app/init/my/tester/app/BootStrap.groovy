package my.tester.app

import com.trianh.Account
import jasperReport.Product

class BootStrap {

    def init = { servletContext ->
     InitializationService.initialize();


    }
    def destroy = {
    }
}
