class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :ean
      t.string :name
      t.string :description
      t.boolean :active
      t.string :published

      t.timestamps
    end
  end
end
