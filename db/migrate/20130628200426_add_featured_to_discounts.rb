class AddFeaturedToDiscounts < ActiveRecord::Migration
  def change
    add_column :discounts, :featured, :boolean
  end
end
