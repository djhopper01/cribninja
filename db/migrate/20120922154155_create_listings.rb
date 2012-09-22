class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :rental_type
      t.integer :rent
      t.integer :deposit

      t.integer :number_of_bedrooms
      t.integer :number_of_bathrooms
      t.integer :square_feet

      t.integer :length_of_lease
      t.integer :length_of_lease_units

      t.references :user
      t.references :address
      t.references :gps

      t.timestamps
    end
  end
end
