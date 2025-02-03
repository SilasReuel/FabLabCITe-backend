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

ActiveRecord::Schema[8.0].define(version: 2025_02_03_152526) do
  create_table "maquinas", force: :cascade do |t|
    t.string "apelido", limit: 50
    t.string "nome_tecnico", limit: 100
    t.string "imagem"
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome", limit: 100
    t.string "senha"
    t.string "email", limit: 100
    t.string "cpf", limit: 11
    t.date "data_nascimento"
    t.string "tipo", default: "Usuários"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "excluido"
    t.integer "score"
  end
end
