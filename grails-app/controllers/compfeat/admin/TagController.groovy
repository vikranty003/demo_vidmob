package compfeat.admin

class TagController {

    def TagService tagService

    def index() {

        def tags = tagService.getAllTags()
        [tags: tags]


    }

    def add(){

    }

    def save(){
        def tag = new Tag(params)

        if(!tag.save(flush: true)){
            flash.message = "Unable to save Tag"
            render(view: "add")
            return

        }

        flash.message = "Tag ${tag.name} created"
        redirect(action: "show", id: tag.id)

    }

    def show(String id){

        def tag = tagService.findTagById(id)
        [tag: tag]
    }

    def edit(String id){

        if(null == id){
            throw new Exception('Invalid Parameters')
        }

        def tag = tagService.findTagById(id)

        [tag: tag]
    }

    def update(String id, Long version){

        def tag = tagService.findTagById(id)

        if(!tag){
            flash.message = "Tag ${id} not found"
            redirect(action: "index")
            return

        }

        if(version != null){
            if (tag.version > version){
                flash.message = "Another user has updated this Tag while you were editing"
                redirect(action: "show" , id: tag.id)
                return

            }
        }

        tag.properties = params

        if(!tag.save(flush: true)){
            flash.message = "Unable to save Tag"
            render(view: "edit", [tag: tag])
            return

        }

        flash.message = "Tag Updated successfully"
        redirect(action: "show" , id: tag.id)
        return


    }

    def remove(String id){

        if(!tagService.delete(id)){
            flash.message = "Unable to delete Tag"
            redirect(action: 'index')
            return
        }
        flash.message = "Tag removed"
        redirect(action: 'index')
        return



    }



}
