package compfeat.admin

class FeatureService {


    List<Feature> getAllFeatures(){

         return Feature.findAll()

    }

    List<Feature> getFeatures(){
        return Feature.findAllByStatus(ApplicationConstant.STATUS_ACTIVE)
    }

    Feature findFeatureById(String id){
        if(null == id){
            throw new Exception('Invalid Parameters');
        }

        return Feature.get(id)
    }

    boolean delete(String id){

        def feature = findFeatureById(id)
        if(!feature){
            return false
        }
        feature.delete(flush: true)
        return true

    }

}
