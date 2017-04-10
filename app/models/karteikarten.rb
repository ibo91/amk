class Karteikarten < ActiveRecord::Base
  belongs_to :user
  belongs_to :kurse
  has_many :bewertungs
end
