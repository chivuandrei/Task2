class Buyer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def buy_product(product)
  	# substract credits
  	self.credits = self.credits-product.price
  	self.save

  	# generate coupon
  	Coupon.create(variant_id: product.cheapest_variant.id, code: Time.now.to_i)
  end
end
