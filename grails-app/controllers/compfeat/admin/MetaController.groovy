package compfeat.admin

class MetaController {

    MetaService metaService

    def index() {

        def metaList = metaService.getAllMetaList();
        [metaList: metaList]

    }

    def add(){

        [typeDD: ApplicationConstant.META_TYPE]

    }

    def save(){
        def meta = new Meta(params)

        if(!meta.save(flush: true)){
            render(view: "add")
            return
        }

        flash.message = "Global Meta ${meta.name} created"
        redirect(action: "show", id: meta.id)

    }

    def show(String id){
        def meta = metaService.findMetaById(id)
        [meta: meta]
    }



    def edit(String id){
        if (null == id){
            throw new Exception("Invalid URLs")
        }
        def meta = metaService.findMetaById(id)
        [meta: meta]

    }

    def update(String id, Long version){

        def meta = metaService.findMetaById(id)

        if(!meta){
            flash.message = "Meta ${id} not found"
            redirect(action: "index")
        }

        if(version != null){
            if(meta.version > version){
                flash.message = "Another user has updated this Meta while you were editing"
                redirect(action: "show" , id: meta.id)
                return

            }
        }

        meta.properties = params
        if(!meta.save(flush: true)){
            flash.message = "Error: Unable to Save Meta"
            render(view: "edit", [meta: meta])
            return

        }

    }

}
