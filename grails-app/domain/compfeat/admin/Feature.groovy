package compfeat.admin

class Feature {

    static mapWith = "mongo"

    String name;
    String status;

    static constraints = {
        status nullable: true
    }

    def beforeInsert(){
        status = ApplicationConstant.STATUS_ACTIVE
    }
}
