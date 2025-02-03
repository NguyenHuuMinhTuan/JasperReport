package authen

import my.tester.app.AuthenticationService


class AuthenticationController {
    AuthenticationService authenticationService

    def login() {
        if (authenticationService.isAuthenticated()) {
            redirect(controller: "account", action: "index")
        }
    }

    def registration() {
    }

    def doLogin() {
        if (authenticationService.doLogin(params.username, params.password)) {
            session.username = params.username;
            redirect(controller: "account", action: "index")
        } else {
            flash.error = "Username and Password unavailable";
            render(view: "login")
        }

    }

    def logout() {
        session.invalidate()
        redirect(controller: "authentication", action: "login")
    }


}