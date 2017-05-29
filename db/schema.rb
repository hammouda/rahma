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

ActiveRecord::Schema.define(version: 20170507103002) do

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

  create_table "members", force: :cascade do |t|
    t.string   "nom"
    t.string   "prenom"
    t.date     "date_naissance"
    t.string   "etat_medical"
    t.string   "sexe"
    t.text     "remarque"
    t.integer  "beneficiaire_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["beneficiaire_id"], name: "index_members_on_beneficiaire_id"
  end

    create_table "services", force: :cascade do |t|
      t.string   "nom"
      t.text     "description"
      t.datetime "created_at",  null: false
      t.datetime "updated_at",  null: false
    end
  create_table "service_beneficiaires", force: :cascade do |t|
    t.decimal  "cout"
    t.date     "date_service"
    t.integer  "service_id"
    t.integer  "beneficiaire_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["beneficiaire_id"], name: "index_service_beneficiaires_on_beneficiaire_id"
    t.index ["service_id"], name: "index_service_beneficiaires_on_service_id"
  end


  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
