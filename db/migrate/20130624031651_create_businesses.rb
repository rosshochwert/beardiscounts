class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :logo
      t.string :name
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
