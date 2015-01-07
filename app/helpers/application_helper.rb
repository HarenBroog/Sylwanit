module ApplicationHelper
  def background_url
    url = "#{ENV['S3_ASSET_URL']}/#{ENV['S3_BUCKET_NAME']}/assets/backgrounds/"
    return image_url(url + "background-green.jpg") unless current_user
    image_url(url + current_user.background_url)
  end
end
