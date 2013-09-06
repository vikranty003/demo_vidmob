package compfeat.admin

class Feature {

    static mapWith = "mongo"

    String id;
    String name;
    String status;

    static constraints = {
        status nullable: true
    }

    def beforeInsert(){
        status = ApplicationConstant.STATUS_ACTIVE
    }
}
