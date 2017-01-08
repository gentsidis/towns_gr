class KapCitiesController < ApplicationController
  before_action :set_kap_city, only: [:show, :edit, :update, :destroy]

  # GET /kap_cities
  # GET /kap_cities.json
  def index
    @kap_cities = KapCity.paginate(page: params[:page], per_page:10)
  end

  # GET /kap_cities/1
  # GET /kap_cities/1.json
  def show
  end

  # GET /kap_cities/new
  def new
    @kap_city = KapCity.new
  end

  # GET /kap_cities/1/edit
  def edit
  end

  # POST /kap_cities
  # POST /kap_cities.json
  def create
    @kap_city = KapCity.new(kap_city_params)

    respond_to do |format|
      if @kap_city.save
        format.html { redirect_to @kap_city, notice: 'Kap city was successfully created.' }
        format.json { render :show, status: :created, location: @kap_city }
      else
        format.html { render :new }
        format.json { render json: @kap_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kap_cities/1
  # PATCH/PUT /kap_cities/1.json
  def update
    respond_to do |format|
      if @kap_city.update(kap_city_params)
        format.html { redirect_to @kap_city, notice: 'Kap city was successfully updated.' }
        format.json { render :show, status: :ok, location: @kap_city }
      else
        format.html { render :edit }
        format.json { render json: @kap_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kap_cities/1
  # DELETE /kap_cities/1.json
  def destroy
    @kap_city.destroy
    respond_to do |format|
      format.html { redirect_to kap_cities_url, notice: 'Kap city was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kap_city
      @kap_city = KapCity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kap_city_params
      params.require(:kap_city).permit(:name, :type, :prefecture_id)
    end
end
