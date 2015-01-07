class AvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  def store_dir
    "#{Rails.env}/uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb    do
    process resize_to_fit: [40, 40]
  end

  version :preview  do
    process resize_to_fit: [128, 128]
  end


  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
