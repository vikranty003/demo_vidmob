package compfeat.admin

class MetaService {

    private STATUS_ACTIVE = 'active'

    List<Meta> getAllMetaList(){

        return Meta.list();
    }

    List<Meta> getMetaList(){
        return Meta.findAllByStatus(STATUS_ACTIVE)
    }

    Meta findMetaById(String id){
        if(null == id){
            throw new Exception('Invalid Parameters');
        }

        return Meta.get(id)
    }




}
