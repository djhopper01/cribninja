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

  belongs_to :user
  has_many :photos

  attr_accessible :rental_type, :rent, :deposit, :number_of_bedrooms,
    :number_of_bathrooms, :square_feet, :length_of_lease, :length_of_lease_units

  searchable do
    string :rental_type

    integer :rent
    integer :deposit 
    integer :number_of_bedrooms 
    integer :number_of_bathrooms
    integer :square_feet

    time :created_at
    time :updated_at
  end

  def to_s
    "#{number_of_bedrooms} bedrooms, #{number_of_bathrooms} bathrooms"
  end

end
