class CreateArchiwums < ActiveRecord::Migration
  def change
    create_table :archiwums do |t|
      t.integer :ID_wpisu
      t.integer :ID_wizyty
      t.string :historia
      t.string :inf_dod

      t.timestamps null: false
    end
  end
end
