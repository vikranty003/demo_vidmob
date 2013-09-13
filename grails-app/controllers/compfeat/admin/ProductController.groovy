package compfeat.admin

import compfeat.admin.Product

class ProductController {

    def DepartmentService departmentService
    def ProductService productService
    def BrandService brandService
    def TagService tagService

    def index() {

        def departments = departmentService.getDepartments()
        [departments: departments]

    }

    def list(String departmentId){

        def departments = departmentService.getDepartments()

        def products = productService.findAllProductsByDepartment(departmentId)

        [departments: departments, products: products]
    }

    def add(String departmentId){

        def department = departmentService.findDepartmentById(departmentId)

        def features = departmentService.getDepartmentFeatures(department)
        def metaList = department.metaList

        // For Drop-Down
        def brands = brandService.getBrands()
        def tags = tagService.getTags()

        [department: department, features: features, metaList: metaList, brands: brands, tags: tags]


    }
}
