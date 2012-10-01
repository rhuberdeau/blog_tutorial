class Comment < ActiveRecord::Base
  attr_accessible :article_id, :body
  belongs_to :article
  
  validates :body,
			;presence => {:message => "Please enter a comment"}
end
