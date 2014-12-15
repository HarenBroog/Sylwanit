class Post < ActiveRecord::Base
  belongs_to :category, inverse_of: :posts
  belongs_to :owner, inverse_of: :posts, class: User
  has_many :comments, inverse_of: :post
end
