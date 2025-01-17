package authen

import my.tester.app.AuthenticationService


class SecurityInterceptor {
    AuthenticationService authenticationService

    SecurityInterceptor() {
        matchAll().excludes(controller: "authentication")
    }

    boolean before() {
        try {
            if (!authenticationService.isAuthenticated()) {
                redirect(controller: "authentication", action: "login")
                return false
            }
        } catch (Exception e) {
            log.error("Error in SecurityInterceptor: ${e.message}")
            redirect(controller: "authentication", action: "login")
            return false
        }
        return true
    }
}