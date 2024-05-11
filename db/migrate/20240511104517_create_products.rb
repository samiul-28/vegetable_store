class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.string :variety
      t.text :details
      t.decimal :price, null: false
      t.date :mfg_date, null: false
      t.date :expiry_date, null: false

      t.timestamps
    end
  end
end
