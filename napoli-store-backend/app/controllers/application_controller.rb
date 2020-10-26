class ApplicationController < ActionController::API
    
    def current_user 
        @user ||= User.find_by(id: session[:user_id])
    end 

    def logged_in? 
        !!current_user
    end
    
    def is_admin?
        !!current_user.admin?
    end

    def current_shopping_cart
        if logged_in?
            @cart = current_user.cart
        else 
            if session[:cart]
                @cart = Cart.find(session[:cart])
            else
                @cart = Cart.create
                session[:cart] = @cart.id 
            end
        end
        
    end


end
