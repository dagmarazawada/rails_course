class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.Date.today :signed_up_on

      t.timestamps
    end
  end
end
