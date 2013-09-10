package compfeat.admin


class Product {

    static mapWith = "mongo"

    String id
    String productKey
    String status
    List<Tag> tags
    Department department
    Brand brand



    static constraints = {
        status nullable: true
    }

    def beforeInsert(){
        status =  ApplicationConstant.STATUS_ACTIVE
    }



}
