class AddAttributesToAd < ActiveRecord::Migration
  def change
    add_column :ads, :email, :string
    add_column :ads, :img_url, :string
  end
end
