class AddPhotoToAccommodations < ActiveRecord::Migration[5.2]
  def change
    add_column :accommodations, :photo, :string
  end
end
