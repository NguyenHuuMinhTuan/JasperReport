package authen

import my.tester.app.AuthenticationService


class AuthenticationController {
    AuthenticationService authenticationService

    def login() {
//
//        log.info("Đã gọi tới login")
//        render(view: "login")
   if (authenticationService.isAuthenticated()) {
            redirect(controller: "account", action: "index")
       }
    }

    def registration() {
        redirect(controller: "authentication", action: "registration")
    }

    def doLogin() {
        if (authenticationService.doLogin(params.username, params.password)) {
            redirect(controller: "account", action: "index")
        } else {
            flash.message ="Username and Password unavailable";
            render(view:"login")
        }

    }

    def logout() {
        session.invalidate()
        redirect(controller: "authentication", action: "login")
    }


}