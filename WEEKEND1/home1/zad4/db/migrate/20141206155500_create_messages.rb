class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.string :body
      t.string :phone_number

      t.timestamps
    end
  end
end
