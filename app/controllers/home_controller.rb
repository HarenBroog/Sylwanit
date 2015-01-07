class HomeController < ApplicationController
  expose(:categories)
  expose(:posts_promoted) { Post.all.sample 5 }
end
