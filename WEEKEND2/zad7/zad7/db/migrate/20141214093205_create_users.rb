class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :status
      t.boolean :confirmed

      t.timestamps
    end
  end
end
