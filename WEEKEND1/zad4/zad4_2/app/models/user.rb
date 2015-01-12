class User < ActiveRecord::Base
	
	validates :name, :email, presence: true
	validates :role, inclusion: {in: ["regular", "admin"]}
	# validates :role, inculsion: { %w(regular admin)}

	before_create :set_admin_confirmable, if: :admin?

	def full_name
		"#{name} #{surname}"
	end

	def admin?
		role == "admin"
	end

	def set_admin_confirmable
		self.confirmation = true # do sprawdzenia w migracji czy confirmable czy confirmation, to ustawione przy tworzeniu modelu
		# jeśli używamy selfa wie że korzystamy z atrybutu a nie ze zmniennej lokalnej
		# analogicznie jak this. w innych językach
	end

	#begin
	#	def admin?
	#		self.ole == "admin"
	#	end	
	#end

end
