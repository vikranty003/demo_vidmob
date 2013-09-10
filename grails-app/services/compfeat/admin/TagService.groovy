package compfeat.admin

class TagService {

    Tag findTagById(String id){

        if(null == id){
            throw new Exception('Invalid Parameter')
        }

        def tag = Tag.get(id)
        return tag

    }

    List<Tag> getAllTags(){

        def tags = Tag.findAll();
        return tags
    }

    List<Tag> getTags(){

        def tag = Tag.findAllByStatus(ApplicationConstant.STATUS_ACTIVE)

    }

    boolean delete(String id){

        def tag = findTagById(id)
        if(!tag){
            return false
        }
        tag.delete(flush: true)
        return true

    }



}
