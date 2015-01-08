class CommentsController < ApplicationController
  expose(:post)
  expose(:comment, attributes: :comment_params)
  expose(:comments)

  def create
    comment.author_id = current_user.id
    comment.save
    path_form
  end

  private

  def path_form
    redirect_to posts_path
  end

  def comment_params
    params.require(:comment).permit(:post_id, :body)
  end
end
