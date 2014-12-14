class PostsController < ApplicationController
  # load_and_authorize_resource
  expose(:post, attributes: :post_params)
  expose(:posts)

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
    params.require(:post).permit(:title, :body).tap do |whitelisted|
      whitelisted[:owner_id] = params[:user_id]
    end
  end

  def path_form
    redirect_to posts_path
  end

end
