class PropertiesController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def property_params
    params.require(:property).permit(:property_name, :rent, :address, :age_of_a_building, :note,
                                      :train_route_name1, :station_name1, :walking_minutes1, :train_route_name2,
                                      :station_name2, :walking_minutes2)
  end
end
