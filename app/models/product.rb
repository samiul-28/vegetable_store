class Product < ApplicationRecord
  has_many :common_item
  has_many :vegetable
  has_many :leafy_green

  validates :name, :type, :price, :mfg_date, :expiry_date, presence: true


  VALID_STATUSES = ['common_item', 'vegetable', 'leafy_green']

  validates :status, inclusion: { in: VALID_STATUSES }

  

end
