class ArticlesController < ApplicationController

  def index
    @articles = [
      {
        "author": "John Doe",
        "date": "2017-02-15",
        "title": "Provincial Monthly for Property Transfer Tax",
        "path": articles_provincial_path
      },
      {
        "author": "John Doe",
        "date": "2017-02-15",
        "title": "Development Region Monthly for Property Transfer Tax",
        "path": articles_development_region_path
      },
      {
        "author": "John Doe",
        "date": "2017-02-15",
        "title": "Municipal Monthly for Property Transfer Tax",
        "path": articles_municipal_path
      },
      {
        "author": "John Doe",
        "date": "2017-02-15",
        "title": "Census of B.C. 2016",
        "path": articles_census_bc_path
      },
      {
        "author": "John Doe",
        "date": "2017-02-15",
        "title": "National Household Survey 2011",
        "path": articles_national_household_survey_path
      },
      {
        "author": "John Doe",
        "date": "2017-02-15",
        "title": "Interesting Insights",
        "path": articles_interesting_insights_path
      }
    ]
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
