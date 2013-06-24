class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.string :name
      t.string :logo
      t.string :description
      t.string :location

      t.timestamps
    end
  end
end
