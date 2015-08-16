class Technician < User
	before_save :default_role

	def default_role
		self.role ||= 2
	end
end