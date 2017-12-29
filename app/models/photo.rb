class Photo < ApplicationRecord
  
  mount_uploader :main_image, PhotoUploader

  def previous
    Photo.where(["id < ?", id]).last
  end
  
  def next
     Photo.where(["id > ?", id]).first
  end

end
