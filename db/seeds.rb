# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end




Product.create(name: "Potato" , details: "A potato is a vegetable, the Solanum tuberosum", price: 55.0, mfg_date: "5/1/2024", expiry_date: "6/1/2024", category: "vegetable")
Product.create(name: "Pumpkin" , details: "A pumpkin is a cultivated winter squash in the genus Cucurbita",  price: 60.0, mfg_date: "5/10/2024", expiry_date: "6/10/2024")
Product.create(name: "Onion" , variety: "Deshi", details: "Purple onion from Pabna", price: 44.0, mfg_date: "5/3/2024", expiry_date: "5/9/2024", category: "common_item")
Product.create(name: "Ginger" , variety: "Deshi", details: "Yellow ginger from Rangpur", price: 124.0, mfg_date: "5/3/2024", expiry_date: "5/9/2024", category: "common_item")
Product.create(name: "Lal Shak" , variety: "Deshi", details: "Amaranth small size editble leaf oriental purple red", price: 12.5, mfg_date: "5/3/2024", expiry_date: "5/4/2024", category: "leafy_green")
Product.create(name: "Palang Shak" , variety: "Deshi", details: "Oriental green spinach", price: 10.0, mfg_date: "5/3/2024", expiry_date: "5/4/2024", category: "leafy_green")
Product.create(name: "Data Shak" , variety: "Deshi", details: "Large Amarnath from Pabna", price: 20.0, mfg_date: "5/3/2024", expiry_date: "5/4/2024", category: "leafy_green")
Product.create(name: "Garlic" , variety: "Deshi", details: "It is native to South Asia", price: 80.0, mfg_date: "5/4/2024", expiry_date: "5/23/2024", category: "common_item")
Product.create(name: "Brinjal" , details: "Brinjal is composed of fat, vitamins", price: 50.0, mfg_date: "5/2/2024", expiry_date: "6/2/2024", category: "vegetable")