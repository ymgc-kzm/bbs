class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :message, :name

  validates :name, :presence => true
  validates :message, :presence => true
end
