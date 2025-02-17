package authen

import my.tester.app.AccountService
import my.tester.app.AuthenticationService


class AuthenticationController {
    AuthenticationService authenticationService
    AccountService accountService

    def login() {
        if (authenticationService.isAuthenticated()) {
            redirect(uri: "/")
            redirect(controller: "account", action: "index")

        }
    }

    def registration() {


    }
    def save() {
        def response = accountService.save(params);
        if (response.isSuccess) {
            flash.message = g.message(code: "Saved");
            redirect(controller: "account", action: "index");

        } else {
            response.getErrors().each { err -> print(err) }
            flash.message = g.message(code: "Unable.to.save");
            redirect(controller: "account", action: "create");
        }

    }

    def doLogin() {
        if (authenticationService.doLogin(params.username, params.password)) {
            session.username = params.username;

            redirect(uri: "/")

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