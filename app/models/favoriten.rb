class Favoriten < ActiveRecord::Base
  belongs_to :user
  belongs_to :karteikarten
end
