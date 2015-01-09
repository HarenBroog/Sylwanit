class HomeController < ApplicationController
  skip_before_filter :authenticate_user!

  expose(:categories)
  expose(:posts_promoted) { Post.all.sample 5 }
end
