class CreateOddzialies < ActiveRecord::Migration
  def change
    create_table :oddzialies do |t|
	t.belongs_to :prac2oddzials
      t.integer :ID_oddzialu
      t.string :oddzial
      t.timestamps null: false
    end
  end
end
