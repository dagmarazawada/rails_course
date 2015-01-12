p = Project.create(name: "Project")

500.times do |n|
	p.tasks << Task.create(name: "task nr #{n}")
end