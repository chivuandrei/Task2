class Product < ActiveRecord::Base

  has_many :variants

  validates :title, presence: true


  def cheapest_variant
  	self.variants.where(is_active: true).order(price: :asc).first
  end
  
  # The price is taken from the cheapest variant belonging to the product which is active. 
  def price 
    cheapest_variant.price
  end


end
