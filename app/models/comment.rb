class Comment < ActiveRecord::Base

  belongs_to :post, inverse_of: :comments
  belongs_to :author, class: User, inverse_of: :comments

end
