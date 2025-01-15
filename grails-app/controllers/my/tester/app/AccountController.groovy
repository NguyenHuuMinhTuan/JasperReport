package my.tester.app

import com.trianh.Account

import net.sf.jasperreports.engine.JasperCompileManager
import net.sf.jasperreports.engine.JasperExportManager
import net.sf.jasperreports.engine.JasperFillManager
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource



class AccountController {
    AccountService accountService

    def index() {
        try {
            def response = accountService.list(params)
            return [accountList: response.list, total: response.count]
        } catch (Exception e) {
            flash.message = "Error loading account list: ${e.message}"
            return [accountList: [], total: 0]
        }
    }

    def print() {
        def data = Account.list();

        def specificProduct = data.first();


        def reportPath = grailsApplication.parentContext.getResource("./report/Account.jrxml").file.toString();

        def jasperReport = JasperCompileManager.compileReport(reportPath)

        def fileParams = [:]

        fileParams.put("id", specificProduct.id)
        fileParams.put("username", specificProduct.username)
        fileParams.put("password", specificProduct.password)
        fileParams.put("email", specificProduct.email)
        fileParams.put("type_account", specificProduct.type_account)

        // Lọc báo cáo và tham số chuyền vào
        def jasperPrint = JasperFillManager.fillReport(
                jasperReport,
                fileParams,
                new JRBeanCollectionDataSource(data)
        )
        //Đẩy ra báo cáo bằng PDF và gửi về phản hồi

        response.setHeader('Content-Disposition', 'inline; filename="AccountReport.pdf"')

        response.setContentType('application/pdf')

        JasperExportManager.exportReportToPdfStream(jasperPrint, response.outputStream)

    }


    def create() {


    }

    def update() {
        def response = accountService.getId(params.id)
        if (!response){

            redirect(controller: "account", action: "index")
        }else{
            response = accountService.update(response, params)
            if (!response.isSuccess){
                flash.redirectParams = response.model

                redirect(controller: "account", action: "edit")
            }else{

                redirect(controller: "account", action: "index")
            }
        }

    }

    def delete(Integer id) {
        def response = accountService.getId(id);
        if (!response) {
            flash.message = g.message(code: "can.not.find");
            redirect(controller: "account", action: "index");

        } else {
            response = accountService.delete(response);
            if (!response) {
                flash.message = g.message(code: "denied.delete");

            } else {
                flash.message = g.message(code: "delete.complete");
            }
            redirect(controller: "account", action: "index")


        }


    }

    def edit(Integer id) {
        if (flash.redirectParams instanceof Account) {
            [account: flash.redirectParams]
        } else {
            def response = accountService.getId(id)
            println(response);
            if (!response) {
                redirect(controller: "account", action: "index")
            } else {
                [account: response]
            }
        }
    }

    def details(Integer id) {
        Account response = accountService.getId(id)
        if (!response) {
            flash.message = g.message(code: "account.save");
            redirect(controller: "account", action: "index");
        } else {
            [member: response];
        }
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

}
