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

ActiveRecord::Schema.define(version: 2021_11_20_220253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "covid_stats", force: :cascade do |t|
    t.integer "people_positive_cases_count"
    t.string "county_name"
    t.string "province_state_name"
    t.datetime "report_date"
    t.string "continent_name"
    t.string "data_source_name"
    t.integer "people_death_new_count"
    t.string "county_fips_number"
    t.string "country_alpha_3_code"
    t.string "country_short_name"
    t.string "country_alpha_2_code"
    t.integer "people_positive_new_cases_count"
    t.integer "people_death_count"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }
  end

end
