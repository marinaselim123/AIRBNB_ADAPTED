class CreateAccommodations < ActiveRecord::Migration[5.2]
  def change
    create_table :accommodations do |t|
      t.string :type
      t.integer :guest_number
      t.integer :rooms_number
      t.integer :beds_number
      t.integer :toilet_number
      t.string :address
      t.integer :price_per_night
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
