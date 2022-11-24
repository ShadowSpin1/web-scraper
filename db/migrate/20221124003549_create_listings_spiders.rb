class CreateListingsSpiders < ActiveRecord::Migration[7.0]
  def change
    create_table :listings_spiders do |t|

      t.timestamps
    end
  end
end
