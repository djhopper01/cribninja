# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  image      :string(255)
#  listing_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Photo < ActiveRecord::Base

  belongs_to :listing

  mount_uploader :image, PhotoUploader

end
