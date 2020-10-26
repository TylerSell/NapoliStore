class ProductsController < ApplicationController

    def index
        products = Product.all 
        render json: products
    end

    def show
        product = Product.find_by(id: params[:id])
        render json: product 
    end

    def create
        if is_admin?
            product = Product.build(product_params)
            render json: product.save ? product : {error: 'Something went wrong please try again'}
        else 
            render json: {error: 'You do not sufficient privelidges to do this. Please ask an Admin for assistance'}
        end
    end

    def update
        product = Product.find_by(id: params[:id])

        if is_admin?
            product.update(product_params)
            render json: product.save ? product : {error: 'Changes were not saved.  Please try again.'}
        else 
            render json: {error: 'You do not sufficient privelidges to do this. Please ask an Admin for assistance'}
        end

    end

    def destroy
        product = Product.find_by(id: params[:id])
        if is_admin?
            product.destroy 
        else
            render json: {error: 'You do not sufficient privelidges to do this. Please ask an Admin for assistance'}
        end
    end

    # ----------------------------------------------------------------------------------

    private

    def product_params
        params.require(:product).permit(:name, :photo, :price, :description, :detail_1, :detail_2, :detail_3, :detail_4, :detail_5, :detail_6, :quantity_sm, :quantity_med, :quantity_large, :quantity_xl, :collection_id, :category_id)
    end
    

end
