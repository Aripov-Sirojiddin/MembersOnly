class CreateClubHouses < ActiveRecord::Migration[7.2]
  def change
    create_table :club_houses do |t|
      t.string :club_name
      t.string :club_description
      t.string :string
      t.string :club_owner

      t.timestamps
    end
  end
end
