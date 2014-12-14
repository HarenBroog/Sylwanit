class Post < ActiveRecord::Base
  belongs_to :owner, inverse_of: :posts, class: User
  has_many :comments, inverse_of: :post
end
