class CreateSuppliers < ActiveRecord::Migration[7.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :address
      t.string :tin_number
      t.string :phone_number
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
