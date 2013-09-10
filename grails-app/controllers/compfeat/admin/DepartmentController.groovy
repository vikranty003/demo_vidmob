package compfeat.admin

class DepartmentController {

    def DepartmentService departmentService
    def MetaService metaService
    def FeatureService featureService

    def index() {

        def departments = departmentService.getAllDepartments()

        [departments: departments]

    }


    def add(){

    }

    def save(){
        def department = new Department(params);

        if(!department.save(flush: true)){
            flash.message = "Error Unable to Save Department"
            render(view: "add")
            return
        }

        flash.message = "Department ${department.name} created"
        redirect(action: "show", id: department.id)


    }

    def show(String id){
        def department = departmentService.findDepartmentById(id)
        [department: department]

    }

    def edit(String id){

        if (null == id){
            throw new Exception("Invalid URLs")
        }

        def department = departmentService.findDepartmentById(id)
        [department: department]

    }

    def update(String id, Long version){

        def department = departmentService.findDepartmentById(id);

        if(!department){
            flash.message = "Department ${id} not found"
            redirect(action: "index")
            return
        }
        if (version != null) {
            if (department.version > version) {
                flash.message = "Another user has updated this Department while you were editing"
                redirect(action: "show" , id: department.id)
                return

            }
        }

        department.properties = params
        if(!department.save(flush: true)){
            flash.message = "Error: Unable to Save Department"
            render(view: "edit", [department: department])
            return

        }


        flash.message = "Department Successfully updated"
        redirect(action: "show" , id: department.id)
        return


    }

    /** meta start **/

    def addMeta(String departmentId){

        def department = departmentService.findDepartmentById(departmentId)
        if(!department){
            flash.message = "Department ${departmentId} not found"
            redirect(controller: 'department' , action: 'index')
        }

        def metaList = metaService.getMetaList();

        def meta = new Meta()
        if (null != params.metaId){
            meta = metaService.findMetaById(params.metaId)
        }
        [department: department, metaList: metaList, meta: meta, typeDD: ApplicationConstant.META_TYPE]

    }

    def removeMeta(String departmentId, String metaName){

        def department = departmentService.findDepartmentById(departmentId)

        if(!department){
            flash.message = "Department ${departmentId} not found"
            redirect(action: "index")
            return
        }


        def metaIndex  = department.metaList.findIndexOf { it.name == metaName }
        if(metaIndex < 0){
            flash.message = "Error: Unable to find Meta"
            redirect(action: 'show', id: departmentId)
            return
        }
        def meta = department.metaList.get(metaIndex)
        department.removeFromMetaList(meta)
        if(!department.save(flush: true)){
            flash.message = "Error: Unable to remove Meta"
            redirect(action: 'show', id: departmentId)
            return

        }

        flash.message = "Meta removed successfully"
        redirect(action: "show" , id: department.id)
        return


    }



    def saveMeta(String departmentId){
        def department = departmentService.findDepartmentById(departmentId)

        if(!department){
            flash.message = "Department ${departmentId} not found"
            redirect(controller: 'department' , action: 'index')
            return
        }

        def meta = new Meta(params)
        if(!department.addToMetaList(meta).save(flush: true)){
            flash.message = "Unable to save meta"
            render (view: 'addMeta')
            return

        }

        flash.message = "Meta ${meta.name} added"
        redirect(controller: 'department', action: 'show', id: departmentId)


    }

    /** meta end **/
    /** feature start **/

    def addFeature(String departmentId){

        def department = departmentService.findDepartmentById(departmentId)
        if(!department){
            flash.message = "Department ${departmentId} not found"
            redirect(controller: 'department' , action: 'index')
        }

        def featureList = featureService.getFeatures();

        def feature = new Feature()
        if (null != params.featureId){
            feature = featureService.findFeatureById(params.featureId)
        }
        [department: department, featureList: featureList, feature: feature]


    }

    def removeFeature(String departmentId, String featureName){

        def department = departmentService.findDepartmentById(departmentId)

        if(!department){
            flash.message = "Department ${departmentId} not found"
            redirect(action: "index")
            return
        }


        def featureIndex  = department.featureList.findIndexOf { it.name == featureName }
        if(featureIndex < 0){
            flash.message = "Error: Unable to find Feature"
            redirect(action: 'show', id: departmentId)
            return
        }

        def feature = department.featureList.get(featureIndex)
        department.removeFromFeatureList(feature)
        if(!department.save(flush: true)){
            flash.message = "Error: Unable to remove Feature"
            redirect(action: 'show', id: departmentId)
            return

        }

        flash.message = "Feature removed successfully"
        redirect(action: "show" , id: department.id)
        return


    }



    def saveFeature(String departmentId){
        def department = departmentService.findDepartmentById(departmentId)

        if(!department){
            flash.message = "Department ${departmentId} not found"
            redirect(controller: 'department' , action: 'index')
            return
        }

        def feature = new Feature(params)
        if(!department.addToFeatureList(feature).save(flush: true)){
            flash.message = "Unable to save feature"
            render (view: 'addMeta')
            return

        }

        flash.message = "Meta ${feature.name} added"
        redirect(controller: 'department', action: 'show', id: departmentId)


    }

    /** feature end **/

}
