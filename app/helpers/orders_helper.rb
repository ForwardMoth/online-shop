module OrdersHelper
    def price(products)
        price = 0.0
        products.each do |product|
            price += count_products(product) * product.price 
        end
        Money.new(price.to_money).format
    end

    def form_order_path(current_order_id)
        if current_page?(controller: 'orders', action: 'show', id: current_order_id) 
            ''
        else
            "orders/#{current_order_id}" 
        end
    end
end
