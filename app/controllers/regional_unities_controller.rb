class RegionalUnitiesController < ApplicationController
  before_action :set_regional_unity, only: [:show, :edit, :update, :destroy]

  # GET /regional_unities
  # GET /regional_unities.json
  def index
    @regional_unities = RegionalUnity.paginate(page: params[:page], per_page:10)
  end

  # GET /regional_unities/1
  # GET /regional_unities/1.json
  def show
  end

  # GET /regional_unities/new
  def new
    @regional_unity = RegionalUnity.new
  end

  # GET /regional_unities/1/edit
  def edit
  end

  # POST /regional_unities
  # POST /regional_unities.json
  def create
    @regional_unity = RegionalUnity.new(regional_unity_params)

    respond_to do |format|
      if @regional_unity.save
        format.html { redirect_to @regional_unity, notice: 'Regional unity was successfully created.' }
        format.json { render :show, status: :created, location: @regional_unity }
      else
        format.html { render :new }
        format.json { render json: @regional_unity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regional_unities/1
  # PATCH/PUT /regional_unities/1.json
  def update
    respond_to do |format|
      if @regional_unity.update(regional_unity_params)
        format.html { redirect_to @regional_unity, notice: 'Regional unity was successfully updated.' }
        format.json { render :show, status: :ok, location: @regional_unity }
      else
        format.html { render :edit }
        format.json { render json: @regional_unity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regional_unities/1
  # DELETE /regional_unities/1.json
  def destroy
    @regional_unity.destroy
    respond_to do |format|
      format.html { redirect_to regional_unities_url, notice: 'Regional unity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regional_unity
      @regional_unity = RegionalUnity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regional_unity_params
      params.require(:regional_unity).permit(:name, :region_id)
    end
end
