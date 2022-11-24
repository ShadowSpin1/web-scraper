class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :address
      t.string :rent
      t.string :sqft
      t.string :bedrooms
      t.string :bathrooms

      t.timestamps
    end
  end
end
