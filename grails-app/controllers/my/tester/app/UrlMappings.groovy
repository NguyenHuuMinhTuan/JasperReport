package my.tester.app

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
        "/report"(controller: "product", action: "index")
        "/reportAccount"(controller: "account", action: "print")
        "/login"(controller: "authentication", action: "login")
        "/registration"(controller: "account", action: "create")
    }
}
