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

ActiveRecord::Schema.define(version: 20170503140153) do

  create_table "beneficiaires", force: :cascade do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "etat_civil"
    t.string   "metier"
    t.integer  "num_cnss"
    t.string   "lieu_naissance"
    t.date     "date_naissance"
    t.string   "adresse"
    t.integer  "telephone"
    t.string   "nom_conjoint"
    t.string   "prenom_conjoint"
    t.string   "metier_conjoint"
    t.string   "lieu_naissance_conjoint"
    t.integer  "telephone_conjoint"
    t.integer  "nbre_membre_famille"
    t.integer  "nbre_garcon"
    t.integer  "nbre_fille"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
