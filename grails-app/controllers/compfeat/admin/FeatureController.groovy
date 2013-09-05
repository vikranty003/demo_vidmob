package compfeat.admin

class FeatureController {


    def FeatureService featureService

    def index(){
        def features = featureService.allFeatures();

        [features: features]
    }

    def add(){

    }

    def save(){
        def feature = new Feature(params)

        if(!feature.save(flush: true)){
            flash.message = "Unable to save Feature"
            render(view: "add")
            return

        }

        flash.message = "Feature ${feature.name} created"
        redirect(action: "show", id: feature.id)

    }

    def show(String id){

        def feature = featureService.findFeatureById(id)
        [feature: feature]
    }

    def edit(String id){

        if(null == id){
            throw new Exception("Invalid Parameters")
        }

        def feature = featureService.findFeatureById(id)
        [feature: feature]

    }

    def update(String id, Long version){

        def feature = featureService.findFeatureById(id)

        if(!feature){
            flash.message = "Feature ${id} not found"
            redirect(action: "index")
            return
        }

        if(version != null){
            if (feature.version > version){
                flash.message = "Another user has updated this Feature while you were editing"
                redirect(action: "show" , id: feature.id)
                return

            }
        }

        feature.properties = params
        if(!feature.save(flush: true)){
            flash.message = "Error: Unable to Save Feature"
            render(view: "edit", [feature: feature])
            return

        }

    }

}
