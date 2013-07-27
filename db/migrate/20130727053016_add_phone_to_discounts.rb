class AddPhoneToDiscounts < ActiveRecord::Migration
  def change
  	add_column :discounts, :phone, :string
  end
end
