class LeafyGreen < ApplicationRecord
  validates :name, :details, :price, :mfg_date, :expiry_date, presence: true
end
