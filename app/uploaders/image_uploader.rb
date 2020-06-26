class ImageUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

# 省略

  # Create different versions of your uploaded files:
  # version :thumb do
    process resize_to_fit: [800, 800]
  # end

end