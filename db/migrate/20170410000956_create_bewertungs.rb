class CreateBewertungs < ActiveRecord::Migration
  def change
    create_table :bewertungs do |t|
      t.integer :bewertungswert
      t.references :user, index: true
      t.references :karteikarten, index: true

      t.timestamps
    end
  end
end
