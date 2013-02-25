class Gallery < ActiveRecord::Base
  attr_accessible :name, :project_id

  has_many :images

  belongs_to :project
end
