class CreatePrac2oddzials < ActiveRecord::Migration
  def change
    create_table :prac2oddzials, {id: false} do |t|
      t.timestamps null: false
    end
  end
end
