package compfeat.admin

class Department {

    static mapWith = "mongo"


    String id
    String key
    String name
    List<Meta> metaList
    List<Feature> featuresList
    String status

    static embedded = ['metaList', 'featuresList']


    static constraints = {

        status nullable: true

    }

    def beforeInsert(){
        status = 'active'
    }
}
