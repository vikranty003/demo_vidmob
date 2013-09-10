package compfeat.admin

class ProductService {


    List<Product> findAllProductsByDepartment(String departmentId){

        if (departmentId == null){
            throw new Exception('Invalid Parameters')
        }
        def products = Product.findAll {
            eq('department', Department.get(departmentId))
        }

    }

}
