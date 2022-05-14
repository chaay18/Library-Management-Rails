# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_05_08_011950) do

  create_table "adherents", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.string "tel"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "auteurs", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string "titre"
    t.integer "nombre_copies"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "auteur_id"
    t.integer "emprunt_doc_id"
    t.index ["auteur_id"], name: "index_documents_on_auteur_id"
    t.index ["emprunt_doc_id"], name: "index_documents_on_emprunt_doc_id"
  end

  create_table "emprunt_docs", force: :cascade do |t|
    t.integer "adherent_id", null: false
    t.integer "document_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["adherent_id"], name: "index_emprunt_docs_on_adherent_id"
    t.index ["document_id"], name: "index_emprunt_docs_on_document_id"
  end

  create_table "empruntordis", force: :cascade do |t|
    t.integer "adherent_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "ordinateur_id"
    t.index ["adherent_id"], name: "index_empruntordis_on_adherent_id"
    t.index ["ordinateur_id"], name: "index_empruntordis_on_ordinateur_id"
  end

  create_table "ordinateurs", force: :cascade do |t|
    t.string "marque"
    t.integer "nbr_copies"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "empruntordi_id"
    t.index ["empruntordi_id"], name: "index_ordinateurs_on_empruntordi_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "documents", "auteurs"
  add_foreign_key "documents", "emprunt_docs"
  add_foreign_key "emprunt_docs", "adherents"
  add_foreign_key "emprunt_docs", "documents"
  add_foreign_key "empruntordis", "adherents"
  add_foreign_key "empruntordis", "ordinateurs"
  add_foreign_key "ordinateurs", "empruntordis"
end
