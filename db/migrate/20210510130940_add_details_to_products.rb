class AddDetailsToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :tagline, :string
    add_column :products, :category, :string
  end
end
