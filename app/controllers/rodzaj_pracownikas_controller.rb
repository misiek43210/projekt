class RodzajPracownikasController < ApplicationController
  before_action :set_rodzaj_pracownika, only: [:show, :edit, :update, :destroy]

  # GET /rodzaj_pracownikas
  # GET /rodzaj_pracownikas.json
  def index
    @rodzaj_pracownikas = RodzajPracownika.all
  end

  # GET /rodzaj_pracownikas/1
  # GET /rodzaj_pracownikas/1.json
  def show
  end

  # GET /rodzaj_pracownikas/new
  def new
    @rodzaj_pracownika = RodzajPracownika.new
  end

  # GET /rodzaj_pracownikas/1/edit
  def edit
  end

  # POST /rodzaj_pracownikas
  # POST /rodzaj_pracownikas.json
  def create
    @rodzaj_pracownika = RodzajPracownika.new(rodzaj_pracownika_params)

    respond_to do |format|
      if @rodzaj_pracownika.save
        format.html { redirect_to @rodzaj_pracownika, notice: 'Rodzaj pracownika was successfully created.' }
        format.json { render :show, status: :created, location: @rodzaj_pracownika }
      else
        format.html { render :new }
        format.json { render json: @rodzaj_pracownika.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rodzaj_pracownikas/1
  # PATCH/PUT /rodzaj_pracownikas/1.json
  def update
    respond_to do |format|
      if @rodzaj_pracownika.update(rodzaj_pracownika_params)
        format.html { redirect_to @rodzaj_pracownika, notice: 'Rodzaj pracownika was successfully updated.' }
        format.json { render :show, status: :ok, location: @rodzaj_pracownika }
      else
        format.html { render :edit }
        format.json { render json: @rodzaj_pracownika.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rodzaj_pracownikas/1
  # DELETE /rodzaj_pracownikas/1.json
  def destroy
    @rodzaj_pracownika.destroy
    respond_to do |format|
      format.html { redirect_to rodzaj_pracownikas_url, notice: 'Rodzaj pracownika was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rodzaj_pracownika
      @rodzaj_pracownika = RodzajPracownika.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rodzaj_pracownika_params
      params.require(:rodzaj_pracownika).permit(:ID_rodzajprac, :rodazj_prac)
    end
end
