class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.integer :variant_id
      t.string :code
      t.timestamp
    end
  end
end
