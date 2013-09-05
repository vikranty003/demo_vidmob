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

    def update(String id){



    }


}
