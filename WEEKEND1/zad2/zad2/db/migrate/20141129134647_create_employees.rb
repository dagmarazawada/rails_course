class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :surname
      t.string :city
      t.integer :organization_id

      t.timestamps
    end
  end
end
