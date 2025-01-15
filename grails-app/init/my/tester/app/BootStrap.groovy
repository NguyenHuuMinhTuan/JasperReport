package my.tester.app

import com.trianh.Account
import jasperReport.Product

class BootStrap {

    def init = { servletContext ->
        def product = new Product("Laptop")
        product.save()


    }
    def destroy = {
    }
}
