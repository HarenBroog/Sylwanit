class HomeController < ApplicationController
  expose(:categories)
  expose(:posts_promoted) { Post.take 5 }

  def index
  end

end
