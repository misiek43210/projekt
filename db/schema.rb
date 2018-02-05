# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180205212151) do

  create_table "archiwums", force: :cascade do |t|
    t.integer  "ID_wpisu"
    t.integer  "ID_wizyty"
    t.string   "historia"
    t.string   "inf_dod"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oddzialies", force: :cascade do |t|
    t.integer  "prac2oddzials_id"
    t.integer  "ID_oddzialu"
    t.string   "oddzial"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "pacjents", force: :cascade do |t|
    t.integer  "wizytums_id"
    t.integer  "ID_Pacjenta"
    t.string   "imie"
    t.string   "nazwisko"
    t.date     "data_urodzenia"
    t.integer  "pesel"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "prac2oddzials", id: false, force: :cascade do |t|
    t.integer  "ID_pracownika"
    t.integer  "ID_oddzialu"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "prac2specjalizacjas", force: :cascade do |t|
    t.integer  "ID_pracownika"
    t.integer  "ID_specjalizacji"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "pracowniks", force: :cascade do |t|
    t.integer  "ID_pracownika"
    t.integer  "ID_rodzajprac"
    t.string   "imie"
    t.string   "nazwisko"
    t.integer  "pesel"
    t.date     "data_zatrudnienia"
    t.float    "zarobki"
    t.boolean  "aktywny"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "password_digest"
  end

  create_table "rodzaj_pracownikas", force: :cascade do |t|
    t.integer  "pracowniks_id"
    t.integer  "ID_rodzajprac"
    t.string   "rodazj_prac"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "specjalizacjas", force: :cascade do |t|
    t.integer  "prac2specjalizacjas_id"
    t.integer  "ID_specjalizacji"
    t.string   "specjalizacja"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "terminarzs", force: :cascade do |t|
    t.integer  "ID_terminu"
    t.integer  "ID_lekarza"
    t.date     "wolne_terminy"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "wizyta", force: :cascade do |t|
    t.integer  "archiwums_id"
    t.integer  "ID_wizyty"
    t.date     "termin"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
