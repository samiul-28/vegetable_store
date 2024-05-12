class Product < ApplicationRecord
  has_many :common_item
  has_many :vegetable
  has_many :leafy_green

  validates :name, :type, :price, :mfg_date, :expiry_date, presence: true

end
