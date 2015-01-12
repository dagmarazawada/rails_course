class CreateMems < ActiveRecord::Migration
  def change
    create_table :mems do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
