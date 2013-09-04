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

    }

    def addMeta(){
        def meta = new Meta();
        meta.properties = params.propert;

    }


}
