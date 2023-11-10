class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product

  def increase_product(count=1)
    self.update(product_count: self.product_count + count)
  end

  def decrease_product(count=1)
    self.update(product_count: self.product_count - count)
  end
end
