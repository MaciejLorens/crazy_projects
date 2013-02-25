class Image < ActiveRecord::Base
  attr_accessible :gallery_id, :name

  has_many :comments, :conditions => {:type => "ImageComment"}, :foreign_key => :external_id
  has_attached_file :photo

  belongs_to :gallery
end
