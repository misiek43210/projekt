class CreateWizyta < ActiveRecord::Migration
  def change
    create_table :wizyta do |t|
t.belongs_to :archiwums
      t.integer :ID_wizyty

      t.date :termin

      t.timestamps null: false
    end
  end
end
