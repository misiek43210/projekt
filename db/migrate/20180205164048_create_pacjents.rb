class CreatePacjents < ActiveRecord::Migration
  def change
    create_table :pacjents do |t|
t.belongs_to :wizytums
      t.integer :ID_Pacjenta
      t.string :imie
      t.string :nazwisko
      t.date :data_urodzenia
      t.integer :pesel

      t.timestamps null: false
    end
  end
end
