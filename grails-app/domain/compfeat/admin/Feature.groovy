package compfeat.admin

class Feature {

    static mapWith = "mongo"

    String name;
    String type;
    Boolean input;
    String status;

    static constraints = {
        status nullable: true
    }

    def beforeInsert(){
        status = 'active'
    }
}
