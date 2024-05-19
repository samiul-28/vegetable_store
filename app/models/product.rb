class Product < ApplicationRecord
  has_one :supplier
  has_many :image

  accepts_nested_attributes_for :supplier, :image
  VALID_CATEGORIES = ['common_item', 'vegetable', 'leafy_green']

  validates :name, :price, :mfg_date, :expiry_date, presence: true
  validates :category, inclusion: {in: Product::VALID_CATEGORIES}, presence: true

  scope :common_items, -> { where(category: "common_item") }
  scope :vegetables, -> { where(category: "vegetable") }
  scope :leafy_greens, -> { where(category: "leafy_green") }

end
