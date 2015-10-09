class ProductsController < ApplicationController

 def index
 	@products = Product.all
 end

def buy
 p = Product.find(params[:product_id])

 if logged_in_user.credits > p.price
 	logged_in_user.buy_product(p)
 	flash[:notice] = "SUCCESS"
 else
 	flash[:notice] = "You don t have enought credits"
 end

  redirect_to action: 'index'
 end
 
end