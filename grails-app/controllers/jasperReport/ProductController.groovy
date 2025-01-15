package jasperReport
import net.sf.jasperreports.engine.JasperFillManager
import net.sf.jasperreports.engine.JasperCompileManager
import net.sf.jasperreports.engine.JasperExportManager
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource

class ProductController {

    def index() {
        def data= Product.list();

        def specificProduct = data.first();

        def reportPath = grailsApplication.parentContext.getResource("./report/Product.jrxml").file.toString();

        def jasperReport = JasperCompileManager.compileReport(reportPath)

        def fileParams = [:]

        fileParams.put("name",specificProduct.name)

        // Lọc báo cáo và tham số chuyền vào
        def jasperPrint = JasperFillManager.fillReport(
                jasperReport,
                fileParams,
                new JRBeanCollectionDataSource(data)
        )
        //Đẩy ra báo cáo bằng PDF và gửi về phản hồi

        response.setHeader('Content-Disposition', 'inline; filename="ProductReport.pdf"')

        response.setContentType('application/pdf')
        JasperExportManager.exportReportToPdfStream(jasperPrint,response.outputStream)
    }
}
