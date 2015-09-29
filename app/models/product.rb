class Product < ActiveRecord::Base

  has_many :variants

  validates :title, presence: true

  # The price is taken from the cheapest variant belonging to the product which is active. 
  def price 
	cheapest_v = self.variants.where(is_active: true).order(price: :asc).first
    cheapest_v.price
  end


end
