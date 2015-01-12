class AddTaskCountToProject < ActiveRecord::Migration
  def up

  	add_column :projects, :tasks_count, :integer, default: 0, null: false

  	Project.find_each do |p|
  		p.tasks_count = p.tasks.size
  		p.save!
  	end

  end
end
