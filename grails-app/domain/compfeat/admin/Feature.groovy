package compfeat.admin

class Feature {

    static mapWith = "mongo"

    String id
    String group
    String name
    String status
    String value

    static constraints = {
        status nullable: true
        value nullable: true
    }

    def beforeInsert(){
        status = ApplicationConstant.STATUS_ACTIVE
    }


}
