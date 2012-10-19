class Cat < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true, :length => {:minimum => 1}, :uniqueness => true
  has_many :images
end
