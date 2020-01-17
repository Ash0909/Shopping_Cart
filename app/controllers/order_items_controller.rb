class OrderItemsController < ApplicationController
    
    def index
        @items = current_cart.order.items
    end
    
    def create
        current_cart.add_item(
            product_id: params[:product_id],
            quantity: params[:quantity]
        )

        redirected_to cart_path
    end
end