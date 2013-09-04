package compfeat.admin

class DepartmentService {

    static STATUS_ACTIVE = 'active'

    def serviceMethod() {

    }

    Department findDepartmentById(String id){

        if(null == id){
            throw new Exception('Invalid Parameters')
        }

        def department = Department.get(id)
        return department

    }


    List<Department> getAllDepartments(){

        def departments = Department.findAllByStatus(STATUS_ACTIVE)
        return departments

    }

    List<Department> getDepartments(){
        def departments = Department.findAllByStatus(STATUS_ACTIVE)
        return departments
    }
}
