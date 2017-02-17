class ArticlesController < ApplicationController
  def index
  end
  
  def development_region
    @dev_region_geo_data = File.read("#{Rails.root}/public/data/dev_region_geo_data.geojson")
    @dev_region_transaction_data = File.read("#{Rails.root}/public/data/dev_region_transaction_data.json")
  end

  def municipal
    @municipal_monthly = File.read("#{Rails.root}/public/data/municipal.geojson")
  end

  def municipal_foreign_involvement
    @municipal_monthly_no_foreign = File.read("#{Rails.root}/public/data/municipal_foreign_involvement.geojson")
  end


end
