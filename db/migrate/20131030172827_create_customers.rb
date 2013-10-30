class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.boolean :verified
      t.string :hashcode

      t.timestamps
    end
  end
end
