module ApplicationHelper
  def background_url
    return image_url("background-green.jpg") unless current_user
    image_url(current_user.background_url)
  end
end
