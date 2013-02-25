class Comment < ActiveRecord::Base
  attr_accessible :content, :external_id, :parent_id, :type, :user_id

end
