package compfeat.admin

import compfeat.admin.Product

class ProductController {

    def DepartmentService departmentService
    def ProductService productService

    def index() {

        def departments = departmentService.getDepartments()
        [departments: departments]

    }

    def list(String departmentId){

        def departments = departmentService.getDepartments()

        def products = productService.findAllProductsByDepartment(departmentId)

        [departments: departments, products: products]
    }
}
