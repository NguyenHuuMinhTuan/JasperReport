package authen

import my.tester.app.AccountService
import my.tester.app.AuthenticationService


class AuthenticationController {
    AuthenticationService authenticationService
    AccountService accountService

    def login() {
        if (authenticationService.isAuthenticated()) {
<<<<<<< HEAD
            redirect(uri: "/")
=======
            redirect(controller: "account", action: "index")
>>>>>>> 1a8b7c4a0b96b8cc8bb37e0b36fa92e4b32c269e
        }
    }

    def registration() {
<<<<<<< HEAD

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
=======
>>>>>>> 1a8b7c4a0b96b8cc8bb37e0b36fa92e4b32c269e
    }

    def doLogin() {
        if (authenticationService.doLogin(params.username, params.password)) {
            session.username = params.username;
<<<<<<< HEAD
            redirect(uri: "/")
=======
            redirect(controller: "account", action: "index")
>>>>>>> 1a8b7c4a0b96b8cc8bb37e0b36fa92e4b32c269e
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