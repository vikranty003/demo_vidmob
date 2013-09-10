package compfeat.admin


class Product {

    static mapWith = "mongo"

    String id
    Department department
    String status

    static constraints = {
        status nullable: true
    }

    def beforeInsert(){
        status =  ApplicationConstant.STATUS_ACTIVE
    }



}
