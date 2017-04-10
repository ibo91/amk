class CreateKurses < ActiveRecord::Migration
  def change
    create_table :kurses do |t|
      t.text :kursname
      t.references :gruppen, index: true

      t.timestamps
    end
  end
end
