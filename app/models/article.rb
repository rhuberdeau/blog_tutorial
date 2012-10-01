class Article < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :comments
  
  validates :title,
			:presence => {:message => "Please provide a title"}
  validates :body,
			:presence => true
end
