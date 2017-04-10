class Favoriten < ActiveRecord::Base
  belongs_to :user
  belongs_to :karteikarten
  acts_as_votable 
end
