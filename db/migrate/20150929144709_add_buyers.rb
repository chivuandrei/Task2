class AddBuyers < ActiveRecord::Migration
  def change
  	Buyer.create(name: "Jonny", credits: 100, email: "joneaasa@yahoo.com",password:"1234567891sdb")
  end
end
