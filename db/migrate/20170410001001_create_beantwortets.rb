class CreateBeantwortets < ActiveRecord::Migration
  def change
    create_table :beantwortets do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
