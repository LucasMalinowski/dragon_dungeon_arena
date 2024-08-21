# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

CURRENT_PATH = File.dirname(__FILE__)

Dir["#{CURRENT_PATH}/seeds/**/*.rb"].each do |file_path|
  next if file_path.include?("non_prod_seeds")

  require file_path

  puts "Creating #{File.basename(file_path, ".*")}..."
  puts "\n"
end

unless Rails.env.production?
  require "#{CURRENT_PATH}/seeds/non_prod_seeds.rb"
end

