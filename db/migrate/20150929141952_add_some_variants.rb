class AddSomeVariants < ActiveRecord::Migration
  def change
  	#for product 1
  	Variant.create(product_id: 1, is_active: true, price: 10, quantity:10)
  	Variant.create(product_id: 1, is_active: true, price: 20, quantity:10)
  	Variant.create(product_id: 1, is_active: true, price: 30, quantity:10)

  	#for product 2
  	Variant.create(product_id: 2, is_active: true, price: 100, quantity:10)
  	Variant.create(product_id: 2, is_active: true, price: 200, quantity:10)
  	Variant.create(product_id: 2, is_active: true, price: 300, quantity:10)
    
    #for product 3
    Variant.create(product_id: 3, is_active: true, price: 1000, quantity:10)
  	Variant.create(product_id: 3, is_active: true, price: 2000, quantity:10)
  	Variant.create(product_id: 3, is_active: true, price: 3000, quantity:10)
  end
end
