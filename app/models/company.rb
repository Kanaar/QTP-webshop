class Company < ApplicationRecord
  has_many :customers
  has_many :orders, :through :customers
end
