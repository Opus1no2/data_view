class CreateCovidStats < ActiveRecord::Migration[6.1]
  def change
    create_table :covid_stats do |t|
      t.integer :people_positive_cases_count
      t.string :county_name
      t.string :province_state_name
      t.datetime :report_date
      t.string :continent_name
      t.string :data_source_name
      t.integer :people_death_new_count
      t.string :county_fips_number
      t.string :country_alpha_3_code
      t.string :country_short_name
      t.string :country_alpha_2_code
      t.integer :people_positive_new_cases_count
      t.integer :people_death_count
      t.datetime :created_at, default: -> { 'CURRENT_TIMESTAMP' }
      t.datetime :updated_at, default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
