class Removingstiaddingscope < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :images, :products
    remove_foreign_key :suppliers, :products

    rename_column :products, :type, :category
  end 
end
