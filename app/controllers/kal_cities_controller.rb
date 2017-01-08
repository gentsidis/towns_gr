class KalCitiesController < ApplicationController
  before_action :set_kal_city, only: [:show, :edit, :update, :destroy]

  # GET /kal_cities
  # GET /kal_cities.json
  def index
    @kal_cities = KalCity.paginate(page: params[:page], per_page:10)
  end

  # GET /kal_cities/1
  # GET /kal_cities/1.json
  def show
  end

  # GET /kal_cities/new
  def new
    @kal_city = KalCity.new
  end

  # GET /kal_cities/1/edit
  def edit
  end

  # POST /kal_cities
  # POST /kal_cities.json
  def create
    @kal_city = KalCity.new(kal_city_params)

    respond_to do |format|
      if @kal_city.save
        format.html { redirect_to @kal_city, notice: 'Kal city was successfully created.' }
        format.json { render :show, status: :created, location: @kal_city }
      else
        format.html { render :new }
        format.json { render json: @kal_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kal_cities/1
  # PATCH/PUT /kal_cities/1.json
  def update
    respond_to do |format|
      if @kal_city.update(kal_city_params)
        format.html { redirect_to @kal_city, notice: 'Kal city was successfully updated.' }
        format.json { render :show, status: :ok, location: @kal_city }
      else
        format.html { render :edit }
        format.json { render json: @kal_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kal_cities/1
  # DELETE /kal_cities/1.json
  def destroy
    @kal_city.destroy
    respond_to do |format|
      format.html { redirect_to kal_cities_url, notice: 'Kal city was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kal_city
      @kal_city = KalCity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kal_city_params
      params.require(:kal_city).permit(:name, :type, :regional_unity_id)
    end
end
