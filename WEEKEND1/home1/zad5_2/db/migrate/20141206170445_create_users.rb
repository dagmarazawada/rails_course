class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :sex
      t.string :computer_time
      t.string :age

      t.timestamps
    end
  end
end
