class CreateImages < ActiveRecord::Migration[7.1]
  def change
    create_table :images do |t|
      t.string :name
      t.string :copywright
      t.string :alt_text
      t.text :details
      t.string :url
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
