class TerminarzsController < ApplicationController
  before_action :set_terminarz, only: [:show, :edit, :update, :destroy]

  # GET /terminarzs
  # GET /terminarzs.json
  def index
    @terminarzs = Terminarz.all
  end

  # GET /terminarzs/1
  # GET /terminarzs/1.json
  def show
  end

  # GET /terminarzs/new
  def new
    @terminarz = Terminarz.new
  end

  # GET /terminarzs/1/edit
  def edit
  end

  # POST /terminarzs
  # POST /terminarzs.json
  def create
    @terminarz = Terminarz.new(terminarz_params)

    respond_to do |format|
      if @terminarz.save
        format.html { redirect_to @terminarz, notice: 'Terminarz was successfully created.' }
        format.json { render :show, status: :created, location: @terminarz }
      else
        format.html { render :new }
        format.json { render json: @terminarz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terminarzs/1
  # PATCH/PUT /terminarzs/1.json
  def update
    respond_to do |format|
      if @terminarz.update(terminarz_params)
        format.html { redirect_to @terminarz, notice: 'Terminarz was successfully updated.' }
        format.json { render :show, status: :ok, location: @terminarz }
      else
        format.html { render :edit }
        format.json { render json: @terminarz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terminarzs/1
  # DELETE /terminarzs/1.json
  def destroy
    @terminarz.destroy
    respond_to do |format|
      format.html { redirect_to terminarzs_url, notice: 'Terminarz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terminarz
      @terminarz = Terminarz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def terminarz_params
      params.require(:terminarz).permit(:ID_terminu, :ID_lekarza, :wolne_terminy)
    end
end
