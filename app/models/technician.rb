class Technician < User
	has_one :ad
	before_save :default_role

	def default_role
		self.role ||= 2
	end
end