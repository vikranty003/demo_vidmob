package compfeat.admin


class Product {

    static mapWith = "mongo"

    String id
    String productKey
    String status
    List<Tag> tags
    Department department
    List<Feature> features
    Brand brand


    static embedded = ['features']


    static constraints = {
        status nullable: true
    }

    def beforeInsert(){
        status =  ApplicationConstant.STATUS_ACTIVE
    }



}
