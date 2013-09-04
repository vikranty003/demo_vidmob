package compfeat.admin

class DepartmentService {

    static STATUS_ACTIVE = 'active'

    def serviceMethod() {

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
