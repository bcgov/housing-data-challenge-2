class ArticlesController < ApplicationController

  def index
  end
  
  def provincial
    @bc_provincial_data = File.read("#{Rails.root}/public/data/bc_provincial_data.json")
  end

  def development_region
    @dev_region_transaction_data = File.read("#{Rails.root}/public/data/dev_region_transaction_data.json")
    @dev_region_geo_data = File.read("#{Rails.root}/public/data/dev_region_geo_data.geojson")
    @census_population_data = File.read("#{Rails.root}/public/data/census_population_data.json")
  end

  def municipal
    @municipal_transaction_data = File.read("#{Rails.root}/public/data/municipal_transaction_data.json")
    @regional_district_geo_data = File.read("#{Rails.root}/public/data/regional_district_geo_data.geojson")
    @municipal_population = File.read("#{Rails.root}/public/data/municipal_population.json")
  end

  def census_bc
    @census_population_data = File.read("#{Rails.root}/public/data/census_population_data.json")
    @census_population_geo_data = File.read("#{Rails.root}/public/data/census_population_geo_data.geojson")
  end

  def national_household_survey
    @national_household_survey_data = File.read("#{Rails.root}/public/data/national_household_survey_data.json")
    @household_mobility_status_data = File.read("#{Rails.root}/public/data/household_mobility_status_data.json")
  end

  def interesting_insights
    @dev_region_transaction_data = File.read("#{Rails.root}/public/data/dev_region_transaction_data.json")
    @municipal_transaction_data = File.read("#{Rails.root}/public/data/municipal_transaction_data.json")
    @census_population_data = File.read("#{Rails.root}/public/data/census_population_data.json")
  end

end
