class Image < ActiveRecord::Base
  attr_accessible :cat_id, :url
  validates :cat_id, :presence => true, :length => {:minimum => 1}
  validates :url, :presence => true, :length => {:minimum => 5}, :uniqueness => true
  belongs_to :cat
end
