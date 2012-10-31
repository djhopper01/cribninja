class UpdateListings < ActiveRecord::Migration
  def up
    change_table :listings do |t|
      t.date :available_at

      # Amenities
      t.boolean :washer_and_dryer
      t.boolean :dishwasher
      t.boolean :microwave
      t.boolean :refrigerator
      t.boolean :oven

      # Utilities
      t.boolean :electric
      t.boolean :gas
      t.boolean :heat
      t.boolean :water
      t.boolean :air_conditioning

      # Pets
      t.boolean :cats
      t.boolean :dogs
    end
  end

  def down
    remove_column :listings, :available_at

    remove_column :listings, :washer_and_dryer
    remove_column :listings, :dishwasher
    remove_column :listings, :microwave
    remove_column :listings, :refrigerator
    remove_column :listings, :oven

    remove_column :listings, :electric
    remove_column :listings, :gas
    remove_column :listings, :heat
    remove_column :listings, :water
    remove_column :listings, :air_conditioning

    remove_column :listings, :cats
    remove_column :listings, :dogs
  end
end
