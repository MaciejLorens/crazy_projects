class Sponsor < ActiveRecord::Base
  attr_accessible :participant_id, :value, :description

  belongs_to :participant
end