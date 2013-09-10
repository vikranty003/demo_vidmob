package compfeat.admin

import compfeat.admin.Product

class ProductController {

    def DepartmentService departmentService

    def index() {

        def departments = departmentService.getDepartments()
        [departments: departments]

    }

    def list(String departmentId){
        def departments = departmentService.getDepartments()
        [departments: departments]

        [products: products]
    }
}
