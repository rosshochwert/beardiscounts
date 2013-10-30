class AddHashCodeToDiscounts < ActiveRecord::Migration
  def change
    add_column :discounts, :hashcode, :string
  end
end
