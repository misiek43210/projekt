class Prac2oddzialsController < ApplicationController
  before_action :set_prac2oddzial, only: [:show, :edit, :update, :destroy]

  # GET /prac2oddzials
  # GET /prac2oddzials.json
  def index
    @prac2oddzials = Prac2oddzial.all
  end

  # GET /prac2oddzials/1
  # GET /prac2oddzials/1.json
  def show
  end

  # GET /prac2oddzials/new
  def new
    @prac2oddzial = Prac2oddzial.new
  end

  # GET /prac2oddzials/1/edit
  def edit
  end

  # POST /prac2oddzials
  # POST /prac2oddzials.json
  def create
    @prac2oddzial = Prac2oddzial.new(prac2oddzial_params)

    respond_to do |format|
      if @prac2oddzial.save
        format.html { redirect_to @prac2oddzial, notice: 'Prac2oddzial was successfully created.' }
        format.json { render :show, status: :created, location: @prac2oddzial }
      else
        format.html { render :new }
        format.json { render json: @prac2oddzial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prac2oddzials/1
  # PATCH/PUT /prac2oddzials/1.json
  def update
    respond_to do |format|
      if @prac2oddzial.update(prac2oddzial_params)
        format.html { redirect_to @prac2oddzial, notice: 'Prac2oddzial was successfully updated.' }
        format.json { render :show, status: :ok, location: @prac2oddzial }
      else
        format.html { render :edit }
        format.json { render json: @prac2oddzial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prac2oddzials/1
  # DELETE /prac2oddzials/1.json
  def destroy
    @prac2oddzial.destroy
    respond_to do |format|
      format.html { redirect_to prac2oddzials_url, notice: 'Prac2oddzial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prac2oddzial
      @prac2oddzial = Prac2oddzial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prac2oddzial_params
      params.require(:prac2oddzial).permit(:ID_Pracownika, :ID_oddzialu)
    end
end
