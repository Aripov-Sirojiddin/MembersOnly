class Post < ApplicationRecord
  belongs_to :club_house
  has_many :comments
end
