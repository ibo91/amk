class CreateFavoritens < ActiveRecord::Migration
  def change
    create_table :favoritens do |t|
      t.references :user, index: true
      t.references :karteikarten, index: true

      t.timestamps
    end
  end
end
