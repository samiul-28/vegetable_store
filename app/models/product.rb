class Product < ApplicationRecord
  validates :name, :type, :price, :mfg_date, :expiry_date, presence: true
end
