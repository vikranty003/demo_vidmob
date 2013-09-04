package compfeat.admin

import com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion

class Department {

    static mapWith = "mongo"


    String id
    String key
    String name
    Meta meta
    Property property
    String status

    static embedded = ['meta', 'property']


    static constraints = {

    }
}
