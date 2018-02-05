class CreateSpecjalizacjas < ActiveRecord::Migration
  def change
    create_table :specjalizacjas do |t|
t.belongs_to :prac2specjalizacjas
      t.integer :ID_specjalizacji
      t.string :specjalizacja

      t.timestamps null: false
    end
  end
end
