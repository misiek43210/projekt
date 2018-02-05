class CreatePracowniks < ActiveRecord::Migration
  def change
    create_table :pracowniks do |t|
t.belongs_to :prac2oddzials
t.belongs_to :prac2specjalizacjas
t.belongs_to :wizytums
t.belongs_to :terminarzs
      t.integer :ID_pracownika
      t.integer :ID_rodzajprac
      t.string :imie
      t.string :nazwisko
      t.integer :pesel
      t.date :data_zatrudnienia
      t.float :zarobki
      t.boolean :aktywny

      t.timestamps null: false
    end
  end
end
