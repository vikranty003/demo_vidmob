package compfeat.admin

import compfeat.admin.Product

class ProductController {

    private products = ['smartPhone':'Smart Phones',
                        'tablet':'Tablets',
                        'laptop':'Laptops']

    def index() {

        [products: products]

    }

    def list(){
        def items = Product.withCriteria {

        }

        items.each { it ->
           print it['brand']
        }

        [products: products]
    }
}
