package compfeat.admin

class DepartmentService {


    Department findDepartmentById(String id){

        if(null == id){
            throw new Exception('Invalid Parameters')
        }

        def department = Department.get(id)
        return department

    }


    List<Department> getAllDepartments(){

        def departments = Department.list()
        return departments

    }

    List<Department> getDepartments(){
        def departments = Department.findAllByStatus(ApplicationConstant.STATUS_ACTIVE)
        return departments
    }

    Map<String, Feature> getDepartmentFeatures(Department department){

        def featureGroupMap = [:]
        department.featureList.each { it->

            List<Feature> groupFeatures = featureGroupMap.get(it.group)
            if(groupFeatures == null){
                groupFeatures = []
            }
            groupFeatures.add(it)
            featureGroupMap.put(it.name, groupFeatures)


        }
        return featureGroupMap

    }

}
