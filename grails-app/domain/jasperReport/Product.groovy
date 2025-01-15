package jasperReport

class Product {
    String name

    Product(String name) {
        this.name = name
    }

    static constraints = {
        name(nullable: true)
    }
}
