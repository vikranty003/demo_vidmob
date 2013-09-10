package compfeat.admin

class BrandService {


    Brand findBrandById(String id){

        if(null == id){
            throw new Exception('Invalid parameters')
        }
        def brand = Brand.get(id)
        return brand

    }


    List<Brand> getAllBrands(){

        def brands = Brand.findAll()
        return brands

    }

    List<Brand> getBrands(){

        def brands = Brand.findAllByStatus(ApplicationConstant.STATUS_ACTIVE)

    }

    boolean delete(String id){

        def brand = findBrandById(id)
        if(!brand){
            return false
        }
        brand.delete(flush: true)
        return true

    }






}
