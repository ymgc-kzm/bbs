class Post < ActiveRecord::Base
  attr_accessible :message, :name

  has_many :comments

  validates :name, :presence => true
  validates :message, :presence => true
end
