class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  include ApplicationHelper

  def default_url
    "#{s3_asset_url}/photo/thumb_avatar_default.png"
  end

  def store_dir
    "#{Rails.env}/uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb    do
    process resize_to_fit: [40, 40]
  end

  version :preview  do
    process resize_to_fit: [128, 128]
  end

  version :big  do
    process resize_to_fit: [256, 256]
  end


  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
