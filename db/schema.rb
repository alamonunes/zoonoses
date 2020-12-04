# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_01_162621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.bigint "cuidador_id", null: false
    t.string "nome"
    t.string "sexo"
    t.string "raca"
    t.string "tipo"
    t.integer "idade"
    t.float "peso"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cuidador_id"], name: "index_animals_on_cuidador_id"
  end

  create_table "cuidadors", force: :cascade do |t|
    t.string "cpf"
    t.string "nome"
    t.string "rg"
    t.string "sexo"
    t.string "telefone"
    t.date "datanasc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_cuidadors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_cuidadors_on_reset_password_token", unique: true
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "cpf"
    t.string "nome"
    t.string "rg"
    t.string "sexo"
    t.string "telefone"
    t.date "data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_funcionarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_funcionarios_on_reset_password_token", unique: true
  end

  add_foreign_key "animals", "cuidadors"
end
