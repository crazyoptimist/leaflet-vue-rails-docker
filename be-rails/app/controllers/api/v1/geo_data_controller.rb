class Api::V1::GeoDataController < ApplicationController

  # GET /geo_data
  def index
    @geo_data = GeoDatum.all
    render json: @geo_data
  end
  
  # POST /geo_data
  def create
    @geo_datum = GeoDatum.new(geo_datum_params)
    if @geo_datum.save
      render json: @geo_datum
    else
      render error: { error: 'Unable to create GeoDatum.' }, status: 400
    end
  end

  # DELETE /geo_data/delete_all
  def destroy
    @purge_result = GeoDatum.destroy_all
    render json: @purge_result
  end
  
  
  private

  def geo_datum_params
    params
      .require(:geo_datum)
      .permit(:type, properties: [ :name, :amenity, :popupContent ], 
        geometry: [ :type, coordinates: [ :lat, :lng ] ]
      )
  end

end
