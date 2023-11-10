module ProductsHelper
    def count_products(product)
        order_product = OrderProduct.find_by(order: @order, product: product)
        order_product.product_count
    end
end
