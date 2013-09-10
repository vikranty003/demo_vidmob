package compfeat.admin

class BrandController {


    def BrandService brandService

    def index() {

        def brands = brandService.getAllBrands()
        [brands: brands]

    }

    def add(){

    }

    def save(){
        def brand = new Brand(params)

        if(!brand.save(flush: true)){
            flash.message = "Unable to save Brand"
            render(view: "add")
            return

        }

        flash.message = "Brand ${brand.name} created"
        redirect(action: "show", id: brand.id)

    }

    def show(String id){

        def brand = brandService.findBrandById(id)
        [brand: brand]
    }

    def edit(String id){

        if(null == id){
            throw new Exception('Invalid Parameters')
        }

        def brand = brandService.findBrandById(id)

        [brand: brand]
    }

    def update(String id, Long version){

        def brand = brandService.findBrandById(id)

        if(!brand){
            flash.message = "Brand ${id} not found"
            redirect(action: "index")
            return

        }

        if(version != null){
            if (brand.version > version){
                flash.message = "Another user has updated this Brand while you were editing"
                redirect(action: "show" , id: brand.id)
                return

            }
        }

        brand.properties = params

        if(!brand.save(flush: true)){
            flash.message = "Unable to save Brand"
            render(view: "edit", [brand: brand])
            return

        }

        flash.message = "Brand Updated successfully"
        redirect(action: "show" , id: brand.id)
        return


    }

    def remove(String id){

        if(!brandService.delete(id)){
            flash.message = "Unable to delete Brand"
            redirect(action: 'index')
            return
        }
        flash.message = "Brand removed"
        redirect(action: 'index')
        return



    }



}
