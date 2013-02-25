class Participant < ActiveRecord::Base
  attr_accessible :project_id, :user_id, :role
  
  validates_presence_of :project_id, :user_id

  belongs_to :user
  belongs_to :project

  has_many :sponsors

  ROLES = {owner: "Owner", participant: "Participant", sponsor: "Sponsor", observer: "Observer"}
end