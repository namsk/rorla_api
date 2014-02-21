class Post < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :content

  belongs_to :user
  has_many :comment
end
