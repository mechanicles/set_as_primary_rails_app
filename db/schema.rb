# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_191_224_131_826) do
  create_table 'addresses', force: :cascade do |t|
    t.string 'data', null: false
    t.boolean 'default', default: false, null: false
    t.integer 'owner_id', null: false
    t.string 'owner_type', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[owner_id owner_type], name: 'index_addresses_on_owner_id_and_owner_type'
  end

  create_table 'email_addresses', force: :cascade do |t|
    t.string 'email', null: false
    t.integer 'user_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.boolean 'primary', default: false, null: false
    t.index ['user_id'], name: 'index_email_addresses_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
end
