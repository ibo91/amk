class CreateGruppens < ActiveRecord::Migration
  def change
    create_table :gruppens do |t|
      t.text :gruppenname

      t.timestamps
    end
  end
end
