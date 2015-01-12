class CreateAdvertisments < ActiveRecord::Migration
  def change
    create_table :advertisments do |t|
      t.string :description
      t.string :title

      t.timestamps
    end
  end
end
