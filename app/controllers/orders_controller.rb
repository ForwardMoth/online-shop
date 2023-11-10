class OrdersController < ApplicationController
    def add
        @user = User.find(params[:user_id])
        @product = Product.find(params[:product_id])
        unless @order.blank?
            order_product = OrderProduct.find_by(order: @order, product: @product)
            if order_product.blank?
                OrderProduct.create(order: @order, product: @product, product_count: 1)
            else
                order_product.product_count += 1 
            end
        end
        redirect_to root_path
    end

    def show
        @products = @user.order.products 
    end

    def destroy
        product = Product.find(params[:id])
        unless product.blank?
            OrderProduct.find_by(order: @order, product: product).destroy
        end
        rendirect_to product_path
    end
end
