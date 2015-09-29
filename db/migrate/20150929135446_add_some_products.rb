class AddSomeProducts < ActiveRecord::Migration
  def change
  	Product.create(title: "Title 1", description: "Description of something...")
    Product.create(title: "Title 2", description: "Description of something...")
    Product.create(title: "Title 3", description: "Description of something...")
  end
end
