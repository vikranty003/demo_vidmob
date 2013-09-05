package compfeat.admin

class MetaService {


    List<Meta> getAllMetaList(){

        return Meta.findAll();
    }

    List<Meta> getMetaList(){
        return Meta.findAllByStatus(ApplicationConstant.STATUS_ACTIVE)
    }

    Meta findMetaById(String id){
        if(null == id){
            throw new Exception('Invalid Parameters');
        }

        return Meta.get(id)
    }




}
