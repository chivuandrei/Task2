class Variant < ActiveRecord::Base

  belongs_to :product
  has_many :coupons

  validates :is_active, presence: true
  validates :price, presence: true
  validates :quantity, presence: true

end