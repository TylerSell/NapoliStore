class CartsController < ApplicationController
    def index
        cart = Cart.find_by(id: params[:id])
        products = cart.cart_items
        render json: products
    end

    def create
        cart = Cart.build()
    end
end
