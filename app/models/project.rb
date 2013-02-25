class Project < ActiveRecord::Base
  attr_accessible :description, :needs, :target, :title

  has_and_belongs_to_many :categories

  has_many :participants
  has_many :posts
  has_many :galleries
  has_many :users, :through => :participants
end
