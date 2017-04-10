class Karteikarten < ActiveRecord::Base
  belongs_to :user
  belongs_to :kurse
end
