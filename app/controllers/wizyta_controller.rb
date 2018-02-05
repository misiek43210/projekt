class WizytaController < ApplicationController
  before_action :set_wizytum, only: [:show, :edit, :update, :destroy]

  # GET /wizyta
  # GET /wizyta.json
  def index
    @wizyta = Wizytum.all
  end

  # GET /wizyta/1
  # GET /wizyta/1.json
  def show
  end

  # GET /wizyta/new
  def new
    @wizytum = Wizytum.new
  end

  # GET /wizyta/1/edit
  def edit
  end

  # POST /wizyta
  # POST /wizyta.json
  def create
    @wizytum = Wizytum.new(wizytum_params)

    respond_to do |format|
      if @wizytum.save
        format.html { redirect_to @wizytum, notice: 'Wizytum was successfully created.' }
        format.json { render :show, status: :created, location: @wizytum }
      else
        format.html { render :new }
        format.json { render json: @wizytum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wizyta/1
  # PATCH/PUT /wizyta/1.json
  def update
    respond_to do |format|
      if @wizytum.update(wizytum_params)
        format.html { redirect_to @wizytum, notice: 'Wizytum was successfully updated.' }
        format.json { render :show, status: :ok, location: @wizytum }
      else
        format.html { render :edit }
        format.json { render json: @wizytum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wizyta/1
  # DELETE /wizyta/1.json
  def destroy
    @wizytum.destroy
    respond_to do |format|
      format.html { redirect_to wizyta_url, notice: 'Wizytum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wizytum
      @wizytum = Wizytum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wizytum_params
      params.require(:wizytum).permit(:ID_wizyty, :ID_lekarza, :ID_pacjenta, :ID_recepcjonisty, :termin)
    end
end
