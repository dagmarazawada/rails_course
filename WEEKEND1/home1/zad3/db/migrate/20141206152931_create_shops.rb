class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :address
      t.string :name
      t.integer :number_of_employees

      t.timestamps
    end
  end
end
