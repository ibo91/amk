class CreateKarteikartens < ActiveRecord::Migration
  def change
    create_table :karteikartens do |t|
      t.text :titel
      t.text :vorderseite
      t.text :rueckseite
      t.integer :aufrufe
      t.references :user, index: true
      t.references :kurse, index: true

      t.timestamps
    end
  end
end
