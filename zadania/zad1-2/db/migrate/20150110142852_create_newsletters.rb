class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.text :content
      t.boolean :is_sent
      t.text :receipients

      t.timestamps null: false
    end
  end
end
