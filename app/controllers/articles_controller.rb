class ArticlesController < ApplicationController



  COLOURS = {
    "colours": [
      {
        "color": "blue",
        "rgba": {"opacity-0.9":"rgba(54,162,235,0.9)", "opacity-1":"rgba(54,162,235,1)", "opacity-0.2":"rgba(54,162,235,0.2)"}
      },
      {
        "color": "orange",
        "rgba": {"opacity-0.9":"rgba(255,159,64,0.9)", "opacity-1":"rgba(255,159,64,1)", "opacity-0.2":"rgba(255,159,64,0.2)"}
      },
      {
        "color": "yellow",
        "rgba": {"opacity-0.9":"rgba(244,232,66,0.9)", "opacity-1":"rgba(244,232,66,1)"} 
      },
      {
        "color": "green",
        "rgba": {"opacity-0.9":"rgba(80,244,66,0.9)", "opacity-1":"rgba(80,244,66,1)"}
      },
      {
        "color": "sky-blue",
        "rgba": {"opacity-0.9":"rgba(66,244,206,0.9)", "opacity-1":"rgba(66,244,206,1)"}
      },
      {
        "color": "bluish-violet",
        "rgba": {"opacity-0.9":"rgba(153,102,255,0.9)", "opacity-1":"rgba(153,102,255,1)"}
      },
      {
        "color": "purple",
        "rgba": {"opacity-0.9":"rgba(191,66,244,0.9)", "opacity-1":"rgba(191,66,244,1)"}
      },
      {
        "color": "light-blue",
        "rgba": {"opacity-0.9":"rgba(75,192,192,0.9)", "opacity-1":"rgba(75,192,192,1)"}
      },
      {
        "color": "grey",
        "rgba": {"opacity-0.9":"rgba(127,127,130,0.9)", "opacity-1":"rgba(127,127,130,1)"} 
      },
      {
        "color": "pink",
        "rgba": {"opacity-0.9":"rgba(239,4,173,0.9)", "opacity-1":"rgba(239,4,173,1)"} 
      },
      {
        "color": "red",
        "rgba": {"opacity-0.9":"rgba(255,99,132,0.9)", "opacity-1":"rgba(255,99,132,1)"} 
      },
    ]
  }.freeze


  def index
  end
  
  def provincial
    @colours_json = COLOURS
    @bc_provincial_data = File.read("#{Rails.root}/public/data/bc_provincial_data.json")
  end

  def development_region
    @colours_json = COLOURS
    @dev_region_transaction_data = File.read("#{Rails.root}/public/data/dev_region_transaction_data.json")
    @bc_population = File.read("#{Rails.root}/public/data/bc_population.json")
    @dev_region_geo_data = File.read("#{Rails.root}/public/data/dev_region_geo_data.geojson")
  end

  def municipal
    @colours_json = COLOURS
    @municipal_transaction_data = File.read("#{Rails.root}/public/data/municipal_transaction_data.json")
    @regional_district_geo_data = File.read("#{Rails.root}/public/data/regional_district_geo_data.geojson")
  end

  def census_bc
    @colours_json = COLOURS
    @census_bc_data = File.read("#{Rails.root}/public/data/census_bc_data.json")
    @census_divisions_data = File.read("#{Rails.root}/public/data/census_divisions_data.geojson")
  end

  def national_household_survey
    @colours_json = COLOURS
    @national_household_survey_data = File.read("#{Rails.root}/public/data/national_household_survey_data.json")
    @household_mobility_status_data = File.read("#{Rails.root}/public/data/household_mobility_status_data.json")
    
  end


end
