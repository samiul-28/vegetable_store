class CreateLeafyGreens < ActiveRecord::Migration[7.1]
  def change
    create_table :leafy_greens do |t|
      t.string :name
      t.string :variety
      t.decimal :price
      t.date :mfg_date
      t.date :expiry_date

      t.timestamps
    end
  end
end
