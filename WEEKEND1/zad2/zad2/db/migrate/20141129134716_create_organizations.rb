class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :income
      t.string :headquarters

      t.timestamps
    end
  end
end
