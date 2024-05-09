class AddDetailsToLeafyGreens < ActiveRecord::Migration[7.1]
  def change
    add_column :leafy_greens, :details, :text
  end
end
