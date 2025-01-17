package com

import net.sf.jasperreports.web.util.WebUtil
import org.grails.web.servlet.mvc.GrailsWebRequest
import org.springframework.web.context.request.RequestContextHolder


class AppUtil {
    static getSession() {
        GrailsWebRequest webRequest = RequestContextHolder.getRequestAttributes()
        if (webRequest) {
            return webRequest.session
        }
        throw new IllegalStateException("Session is not available")
    }
}
