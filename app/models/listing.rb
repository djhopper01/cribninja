# == Schema Information
#
# Table name: listings
#
#  id                    :integer          not null, primary key
#  rental_type           :string(255)
#  rent                  :integer
#  deposit               :integer
#  number_of_bedrooms    :integer
#  number_of_bathrooms   :integer
#  square_feet           :integer
#  length_of_lease       :integer
#  length_of_lease_units :integer
#  user_id               :integer
#  address_id            :integer
#  gps_id                :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Listing < ActiveRecord::Base
end
