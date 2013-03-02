class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :nick, :email, :password, :password_confirmation, :remember_me

  has_and_belongs_to_many :roles

  has_many :participants
  has_many :posts
  has_many :projects, :through => :participants

  def superadmin?
    role = Role.find_by_name "superadmin"
    self.roles.include?(role)
  end

  def admin?
    role = Role.find_by_name "admin"
    self.roles.include?(role)
  end
  
  def moderator?
    role = Role.find_by_name "moderator"
    self.roles.include?(role)
  end
  
  def user?
    role = Role.find_by_name "user"
    self.roles.include?(role)
  end
end
