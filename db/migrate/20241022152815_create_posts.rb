class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.references :club_house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
