class CreatePrac2specjalizacjas < ActiveRecord::Migration
  def change
    create_table :prac2specjalizacjas do |t|
      t.integer :ID_pracownika
      t.integer :ID_specjalizacji

      t.timestamps null: false
    end
  end
end
