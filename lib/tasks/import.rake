require 'csv'

namespace :import do
  task covid_stats: :environment do
    data_file = File.join(File.dirname(File.expand_path(__FILE__)), '/data/covid.csv')

    sql = <<-SQL
      COPY covid_stats(
        people_positive_cases_count,
        county_name,
        province_state_name,
        report_date,
        continent_name,
        data_source_name,
        people_death_new_count,
        county_fips_number,
        country_alpha_3_code,
        country_short_name,
        country_alpha_2_code,
        people_positive_new_cases_count,
        people_death_count
      )
      FROM \'#{data_file}\'
      DELIMITER ','
      CSV HEADER
    SQL

    ActiveRecord::Base.transaction do
      puts "Removing existing records..."
      CovidStat.delete_all
      puts "Importing new records..."
      results = CovidStat.connection.execute(sql)
      puts "Successfully imported #{results.cmd_tuples} records"
    end
  end
end
