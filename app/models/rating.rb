class Rating < ActiveRecord::Base
  attr_accessible :project_id, :user_id, :value

  belongs_to :user
  belongs_to :project
end
