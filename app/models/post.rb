class Post < ActiveRecord::Base
  attr_accessible :content, :project_id, :user_id

  has_many :comments, :conditions => {:type => "PostComment"}, :foreign_key => :external_id

  belongs_to :user
  belongs_to :project

end
