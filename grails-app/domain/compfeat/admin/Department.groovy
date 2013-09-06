package compfeat.admin

class Department {

    static mapWith = "mongo"


    String id
    String key
    String name
    List<Meta> metaList
    List<Feature> featureList
    String status



    static hasMany = [metaList:Meta,featureList:Feature]
    static embedded = ['metaList', 'featureList']

    static constraints = {

        status nullable: true

    }

    def beforeInsert(){
        status = ApplicationConstant.STATUS_ACTIVE
    }
}
