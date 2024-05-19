class Supplier < ApplicationRecord
  belongs_to :product

  #scope :search, -> (term) { where("name ILIKE ?", "%#{term}%") if term.present? }

end
