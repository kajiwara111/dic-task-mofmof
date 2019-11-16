class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    2.times{
      @property.nearest_stations.build
    }
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      flash[:notice] = '物件情報は正常に登録されました'
      redirect_to properties_path
    else
      flash.now[:danger] = '物件情報の登録に失敗しました'
      render :new
    end
  end

  def show
    @property = Property.find(params[:id])
    @nearest_stations = @property.nearest_stations
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    @property = Property.find(params[:id])
    if @property.update(property_params)
      flash[:notice] = '物件情報を更新しました'
      redirect_to properties_path
    else
      flash.now[:danger] = '物件情報の更新に失敗しました'
      render :edit
    end
  end

  def destroy
    @property = Property.find(params[:id])
    @property.destroy
    redirect_to properties_path, notice: '物件情報を削除しました'
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
