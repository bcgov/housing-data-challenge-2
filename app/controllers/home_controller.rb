class HomeController < ApplicationController

  def index
  	@greater_van = File.read("#{Rails.root}/public/data/greater_van.geojson")
  	@property_transfer_transaction = File.read("#{Rails.root}/public/data/property_transfer_transaction.json")
  end

  
end
