class Gruppen < ActiveRecord::Base
  has_many :kurses
  acts_as_votable 
end
