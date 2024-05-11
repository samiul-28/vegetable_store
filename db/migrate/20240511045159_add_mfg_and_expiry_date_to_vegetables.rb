class AddMfgAndExpiryDateToVegetables < ActiveRecord::Migration[7.1]
  def change
    add_column :vegetables, :mfg_date, :date
    add_column :vegetables, :expiry_date, :date
  end
end
