class ClubHousesController < ApplicationController
  before_action :set_club_house, only: %i[ show edit update destroy ]

  # GET /club_houses or /club_houses.json
  def index
    @club_houses = ClubHouse.all
  end

  # GET /club_houses/1 or /club_houses/1.json
  def show
  end

  # GET /club_houses/new
  def new
    @club_house = ClubHouse.new
  end

  # GET /club_houses/1/edit
  def edit
  end

  # POST /club_houses or /club_houses.json
  def create
    @club_house = ClubHouse.new(club_house_params)

    respond_to do |format|
      if @club_house.save
        format.html { redirect_to @club_house, notice: "Club house was successfully created." }
        format.json { render :show, status: :created, location: @club_house }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @club_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /club_houses/1 or /club_houses/1.json
  def update
    respond_to do |format|
      if @club_house.update(club_house_params)
        format.html { redirect_to @club_house, notice: "Club house was successfully updated." }
        format.json { render :show, status: :ok, location: @club_house }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @club_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /club_houses/1 or /club_houses/1.json
  def destroy
    @club_house.destroy!

    respond_to do |format|
      format.html { redirect_to club_houses_path, status: :see_other, notice: "Club house was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club_house
      @club_house = ClubHouse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def club_house_params
      params.require(:club_house).permit(:club_name, :club_description, :string, :club_owner)
    end
end
