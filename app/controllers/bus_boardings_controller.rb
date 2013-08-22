class BusBoardingsController < ApplicationController
  before_action :set_bus_boarding, only: [:show, :edit, :update, :destroy]

  # GET /bus_boardings
  # GET /bus_boardings.json
  def index
    @bus_boardings = BusBoarding.all
  end

  def bus_aggs
    @count = BusBoarding.count
    @avg_boardings = BusBoarding.average("boardings")
    @top_five_boardings = BusBoarding.order("boardings DESC").limit(5)
  end

  # GET /bus_boardings/1
  # GET /bus_boardings/1.json
  def show
  end

  # GET /bus_boardings/new
  def new
    @bus_boarding = BusBoarding.new
  end

  # GET /bus_boardings/1/edit
  def edit
  end

  # POST /bus_boardings
  # POST /bus_boardings.json
  def create
    @bus_boarding = BusBoarding.new(bus_boarding_params)

    respond_to do |format|
      if @bus_boarding.save
        format.html { redirect_to @bus_boarding, notice: 'Bus boarding was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bus_boarding }
      else
        format.html { render action: 'new' }
        format.json { render json: @bus_boarding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bus_boardings/1
  # PATCH/PUT /bus_boardings/1.json
  def update
    respond_to do |format|
      if @bus_boarding.update(bus_boarding_params)
        format.html { redirect_to @bus_boarding, notice: 'Bus boarding was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bus_boarding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bus_boardings/1
  # DELETE /bus_boardings/1.json
  def destroy
    @bus_boarding.destroy
    respond_to do |format|
      format.html { redirect_to bus_boardings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bus_boarding
      @bus_boarding = BusBoarding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bus_boarding_params
      params.require(:bus_boarding).permit(:stop_id, :on_street, :cross_street, :routes, :boardings, :alightings, :month_beginning, :daytype, :longitude, :latitude)
    end
end
