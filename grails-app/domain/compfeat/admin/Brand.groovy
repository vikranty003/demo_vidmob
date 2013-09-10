package compfeat.admin

class Brand {


    static mapWith = "mongo"

    String id
    String key
    String name
    String status




    static constraints = {
        status nullable: true
    }

    def beforeInsert(){
        status = ApplicationConstant.STATUS_ACTIVE
    }
}
