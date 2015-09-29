class Coupon < ActiveRecord::Base

  belongs_to :variant
  validates :code, length: {minimum: 1}, allow_blank: false

end