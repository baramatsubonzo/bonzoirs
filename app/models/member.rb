class Member < ApplicationRecord
 mount_uploader :picture, PictureUploader
 validate :picture_size
 
 belongs_to: users

 private

 def picture_size
  if picture.size > 5.megabytes
    errors.add(:picture, "5MB以下にしてください")
   end
  end
 
end
