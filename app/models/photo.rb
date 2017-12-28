class Photo < ApplicationRecord

  mount_uploader :main_image, PhotoUploader
end
