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

ActiveRecord::Schema[7.1].define(version: 2024_08_02_115240) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "backgrounds", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "battle_participants", force: :cascade do |t|
    t.bigint "battle_id", null: false
    t.bigint "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["battle_id"], name: "index_battle_participants_on_battle_id"
    t.index ["character_id"], name: "index_battle_participants_on_character_id"
  end

  create_table "battles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.bigint "sheet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "current_hp"
    t.index ["sheet_id"], name: "index_characters_on_sheet_id"
  end

  create_table "classes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hit_die"
    t.string "primary_ability"
    t.text "saving_throws"
    t.text "armor_proficiencies"
    t.text "weapon_proficiencies"
    t.text "skill_proficiencies"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages_sheets", id: false, force: :cascade do |t|
    t.bigint "sheet_id", null: false
    t.bigint "language_id", null: false
    t.index ["language_id"], name: "index_languages_sheets_on_language_id"
    t.index ["sheet_id"], name: "index_languages_sheets_on_sheet_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sheet_attributes", force: :cascade do |t|
    t.bigint "sheet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sheet_id"], name: "index_sheet_attributes_on_sheet_id"
  end

  create_table "sheet_inventories", force: :cascade do |t|
    t.bigint "sheet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sheet_id"], name: "index_sheet_inventories_on_sheet_id"
  end

  create_table "sheet_skills", force: :cascade do |t|
    t.bigint "sheet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sheet_id"], name: "index_sheet_skills_on_sheet_id"
  end

  create_table "sheet_spells", force: :cascade do |t|
    t.bigint "sheet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sheet_id"], name: "index_sheet_spells_on_sheet_id"
  end

  create_table "sheets", force: :cascade do |t|
    t.string "name"
    t.integer "hp"
    t.integer "armor_class"
    t.integer "level"
    t.float "experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.integer "max_hp"
    t.integer "temp_hp"
    t.integer "current_hp"
    t.integer "movement_speed"
    t.text "personality_traits"
    t.text "ideals"
    t.text "bonds"
    t.text "flaws"
    t.text "death_saves"
    t.text "currency"
    t.text "notes"
    t.integer "proficiency_bonus"
    t.text "spell_slots"
    t.integer "age"
    t.string "height"
    t.string "weight"
    t.string "eyes"
    t.string "skin"
    t.text "allies"
    t.text "organizations"
    t.text "character_story"
    t.string "alignment"
    t.integer "inspiration_points"
    t.bigint "background_id"
    t.bigint "classes_id"
    t.bigint "race_id"
    t.index ["background_id"], name: "index_sheets_on_background_id"
    t.index ["classes_id"], name: "index_sheets_on_classes_id"
    t.index ["race_id"], name: "index_sheets_on_race_id"
    t.index ["user_id"], name: "index_sheets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "battle_participants", "battles"
  add_foreign_key "battle_participants", "characters"
  add_foreign_key "characters", "sheets"
  add_foreign_key "sheet_attributes", "sheets"
  add_foreign_key "sheet_inventories", "sheets"
  add_foreign_key "sheet_skills", "sheets"
  add_foreign_key "sheet_spells", "sheets"
  add_foreign_key "sheets", "backgrounds"
  add_foreign_key "sheets", "classes", column: "classes_id"
  add_foreign_key "sheets", "races"
  add_foreign_key "sheets", "users"
end
