class CategoriesController < ApplicationController
    def index
        categories = Category.all 
        render json: categories
    end

    def create
        if is_admin?
            category = Category.build(category_params)
            render json: category.save ? category : {error: 'Something went wrong please try again'}
        else 
            render json: {error: 'You do not sufficient privelidges to do this. Please ask an Admin for assistance'}
        end
    end

    # ---------------------------------------------------

    private 

    def category_params
        params.require(:category).permit(:name)
    end

end
