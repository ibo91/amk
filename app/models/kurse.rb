class Kurse < ActiveRecord::Base
  belongs_to :gruppen
  has_many :karteikartens
end
