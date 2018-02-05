class CreatePrac2oddzials < ActiveRecord::Migration
  def change
    create_table :prac2oddzials, {id: false} do |t|
	t.integer :ID_pracownika
      t.integer :ID_oddzialu
    t.timestamps null: false
    end
  end
end
