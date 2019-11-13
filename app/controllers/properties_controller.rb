class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    #@property.nearest_stations.build
    2.times{
      @property.nearest_stations.build
    }
  end

  def create
    #@property = Property.create(property_params)
    @property = Property.new(property_params)
    @property.save
    render 'new'
    #@property
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def property_params
    params.require(:property).permit(
      :property_name,
      :rent,
      :address,
      :age_of_a_building,
      :note,
      nearest_stations_attributes: [:train_route_name, :station_name, :walking_minutes]
    )
  end
end
