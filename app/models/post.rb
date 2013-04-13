class Post < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  attr_accessible :message, :title
  validates :title, :presence => true
  validates :message,  :presence => true
end
