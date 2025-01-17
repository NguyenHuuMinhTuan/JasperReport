package my.tester.app

import grails.testing.services.ServiceUnitTest
import spock.lang.Specification

class InitializationServiceSpec extends Specification implements ServiceUnitTest<InitializationService>{

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:"fix me"
            true == false
    }
}
