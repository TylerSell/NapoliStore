class CategoriesController < ApplicationController
    def index
        categories = Category.all 
        render json: categories
    end

    def create
    end

    def update
    end
end
