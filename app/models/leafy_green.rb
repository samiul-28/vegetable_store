class LeafyGreen < ApplicationRecord
  validates :price, :mfg_date, :expiry_date, presence: true
end
