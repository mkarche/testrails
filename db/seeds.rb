# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
require "json"
Product.destroy_all

url = "https://api.producthunt.com/v1/posts"
headers = {
  "Accept" => "application/json",
  "Content-Type" => "application/json",
  "Authorization" => "Bearer 3oeSvbbQB15ySFJVHebb5wJIOJiIWJdsCZfNS0oW85Q",
  "Host" => "api.producthunt.com"
}

response = open(url, headers).read
posts = JSON.parse(response)["posts"]
posts.each do |post|
  Product.create!(name: post["name"], tagline: post["tagline"] ,category: post.dig("topics", 0, "name"))
end
