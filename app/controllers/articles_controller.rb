class ArticlesController < ApplicationController



  COLOURS = {
    "colours": [
      {
        "color": "blue",
        "rgba": {"opacity-0.9":"rgba(54,162,235,0.9)", "opacity-1":"rgba(54,162,235,1)"}
      },
      {
        "color": "orange",
        "rgba": {"opacity-0.9":"rgba(255,159,64,0.9)", "opacity-1":"rgba(255,159,64,1)"}
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
        "color": "red",
        "rgba": {"opacity-0.9":"rgba(255,99,132,0.9)", "opacity-1":"rgba(255,99,132,1)"} 
      }
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

  def foreign_involvement
    @colours_json = COLOURS
    @provincial_data = File.read("#{Rails.root}/public/data/provincial_data.json")
    @municipal_monthly_no_foreign = File.read("#{Rails.root}/public/data/foreign_involvement.geojson")
  end

  def census_bc
    @colours_json = COLOURS
    @census_bc_data = File.read("#{Rails.root}/public/data/census_bc_data.json")
    @census_divisions_data = File.read("#{Rails.root}/public/data/census_divisions_data.geojson")
  end


end
