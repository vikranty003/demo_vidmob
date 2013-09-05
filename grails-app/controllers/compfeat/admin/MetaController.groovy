package compfeat.admin

class MetaController {

    MetaService metaService

    def index() {

        def metaList = metaService.getAllMetaList();
        [metaList: metaList]

    }

    def add(){

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

    def update(){

    }

}
