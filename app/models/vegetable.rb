class Vegetable < ApplicationRecord
    validates :name, :description, :price, :mfg_date, :expiry_date, presence: true
    
end
