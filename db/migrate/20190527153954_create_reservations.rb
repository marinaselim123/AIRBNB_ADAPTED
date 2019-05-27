class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.datetime :arrival_date
      t.datetime :departure_date
      t.integer :guest_number
      t.integer :total_price
      t.string :status
      t.references :user, foreign_key: true
      t.references :accommodation, foreign_key: true

      t.timestamps
    end
  end
end
