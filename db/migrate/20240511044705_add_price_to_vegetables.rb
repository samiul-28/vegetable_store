class AddPriceToVegetables < ActiveRecord::Migration[7.1]
  def change
    add_column :vegetables, :price, :decimal
  end
end
