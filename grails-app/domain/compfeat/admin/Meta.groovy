package compfeat.admin

class Meta {

    static mapWith = "mongo"

    String id;
    String name;
    String type;
    String unit;
    List<String> value;
    Boolean input
    Boolean sort
    Boolean filter
    String status



    static constraints = {
          unit nullable: true
          status nullable: true

    }

    def beforeInsert(){
        status = ApplicationConstant.STATUS_ACTIVE
    }

}
