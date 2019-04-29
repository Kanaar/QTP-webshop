class Invoice < ApplicationRecord
  belongs_to :order
  has_many :order_items, :through :orders
end
