class OrdersController < ApplicationController
    def create
        @order = Order.find(params[:order_id])
        @product = Product.find(params[:product_id])
        unless @order.blank?
            order_product = OrderProduct.find_by(order: @order, product: @product)
            if order_product.blank?
                OrderProduct.create(order: @order, product: @product, product_count: 1)
            else
                order_product.increase_product
            end
            flash[:success] = I18n.t('product.new.flash')
        end
        redirect_to root_path
    end

    def show
        @order = Order.find(params[:id])
        @products = @order.products 
    end

    def update 
        order = Order.find(params[:id])
        product = Product.find(params[:product_id])
        unless product.blank? 
            order_product = OrderProduct.find_by(order: @order, product: product)
            if params[:change_quatity] == 'add'
                order_product.increase_product
            elsif params[:change_quatity] == 'remove'
                if order_product.product_count > 1 
                    order_product.decrease_product
                end
            end
        end
        redirect_to order_path
    end

    def destroy
        order = Order.find(params[:id])
        product = Product.find(params[:product_id])
        unless product.blank?
            OrderProduct.find_by(order: @order, product: product).destroy
            flash[:danger] = I18n.t('product.destroy.flash')
        end
        redirect_to order_path
    end
end
