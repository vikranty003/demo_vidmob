package compfeat.admin

class DepartmentController {

    def DepartmentService departmentService

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

    def addMeta(){
        def meta = new Meta(params)

        if(!meta.save(flush: true)){

        }


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



    }


}
