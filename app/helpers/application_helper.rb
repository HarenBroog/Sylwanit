module ApplicationHelper
  def background_url
    url = "#{s3_asset_url}/backgrounds/"
    return image_url(url + "background-green.jpg") unless current_user
    image_url(url + current_user.background_url)
  end

  def s3_asset_url
    "#{ENV['S3_ASSET_URL']}/#{ENV['S3_BUCKET_NAME']}/assets"
  end

  def format_time(time)
    time.strftime('%d/%m/%Y %H:%M')
  end
end
