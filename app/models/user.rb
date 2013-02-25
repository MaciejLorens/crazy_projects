class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :nick, :email, :password, :password_confirmation, :remember_me

  has_and_belongs_to_many :roles

  has_many :participants
  has_many :posts
  has_many :projects, :through => :participants
end
