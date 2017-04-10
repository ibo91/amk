class Bewertung < ActiveRecord::Base
  belongs_to :user
  belongs_to :karteikarten
end
