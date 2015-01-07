class PostsController < ApplicationController
  expose(:category) { Category.find_by_id(params[:category_id]) }
  expose(:post, attributes: :post_params)
  expose(:posts) { category ? category.posts : Post.all }

  def index
  end

  def create
    post.save
    path_form
  end

  def update
    post.save
    path_form
  end

  def destroy
    post.delete
    path_form
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :category_id).tap do |whitelisted|
      whitelisted[:owner_id] = params[:user_id]
    end
  end

  def path_form
    redirect_to posts_path
  end

end
