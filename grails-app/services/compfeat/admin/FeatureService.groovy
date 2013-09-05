package compfeat.admin

class FeatureService {

    static STATUS_ACTIVE = 'active'

    List<Feature> getAllFeatures(){

         return Feature.list()

    }

    List<Feature> getFeatures(){
        return Feature.findAllByStatus(STATUS_ACTIVE)
    }

    Feature findFeatureById(String id){
        if(null == id){
            throw new Exception('Invalid Parameters');
        }

        return Feature.get(id)
    }

}
