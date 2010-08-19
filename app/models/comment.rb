class Comment < ActiveRecord::Base
  belongs_to(:user)

  validates_presence_of(:comment)
end
