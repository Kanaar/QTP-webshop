class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :company
  has_many :orders
  has_many :invoices, :through :orders

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
