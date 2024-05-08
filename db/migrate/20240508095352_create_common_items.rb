class CreateCommonItems < ActiveRecord::Migration[7.1]
  def change
    create_table :common_items do |t|
      t.string :name
      t.string :variety
      t.text :details
      t.decimal :price
      t.date :mfg_date
      t.date :expiry_date

      t.timestamps
    end
  end
end
