package compfeat.admin

class FeatureService {


    List<Feature> getAllFeatures(){

         return Feature.list()

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

}
