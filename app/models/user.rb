class User < ApplicationRecord
    has_one :order, dependent: :delete
end
