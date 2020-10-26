class CollectionsController < ApplicationController
    def index
        collections = Collection.all 
        render json: collections 
    end

    def create
        if is_admin?
            collection = Collection.build(collection_params)
            render json: collection.save ? collection : {error: 'Something went wrong please try again'}
        else 
            render json: {error: 'You do not sufficient privelidges to do this. Please ask an Admin for assistance'}
        end
    end

    # ---------------------------------------------------------

    private 

    def collection_params
        params.require(:collection).permit(:name)
    end

end
