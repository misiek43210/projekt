class CreateRodzajPracownikas < ActiveRecord::Migration
  def change
    create_table :rodzaj_pracownikas do |t|
t.belongs_to :pracowniks
      t.integer :ID_rodzajprac
      t.string :rodazj_prac

      t.timestamps null: false
    end
  end
end
