class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:guest, :user, :technician, :admin]

  before_save :default_role

  def default_role
  	self.role ||= 1
  end
end
