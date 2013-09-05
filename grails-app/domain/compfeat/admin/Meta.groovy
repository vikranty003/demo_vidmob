package compfeat.admin

class Meta {

    static mapWith = "mongo"

    String name;
    String type;
    List<String> value;
    Boolean input
    String status



    static constraints = {
          status nullable: true
    }

    def beforeInsert(){
        status = 'active'
    }

}
