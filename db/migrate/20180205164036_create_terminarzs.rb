class CreateTerminarzs < ActiveRecord::Migration
  def change
    create_table :terminarzs do |t|
      t.integer :ID_terminu
      t.integer :ID_lekarza
      t.date :wolne_terminy

      t.timestamps null: false
    end
  end
end
