class ArchiwumsController < ApplicationController
  before_action :set_archiwum, only: [:show, :edit, :update, :destroy]

  # GET /archiwums
  # GET /archiwums.json
  def index
    @archiwums = Archiwum.all
  end

  # GET /archiwums/1
  # GET /archiwums/1.json
  def show
  end

  # GET /archiwums/new
  def new
    @archiwum = Archiwum.new
  end

  # GET /archiwums/1/edit
  def edit
  end

  # POST /archiwums
  # POST /archiwums.json
  def create
    @archiwum = Archiwum.new(archiwum_params)

    respond_to do |format|
      if @archiwum.save
        format.html { redirect_to @archiwum, notice: 'Archiwum was successfully created.' }
        format.json { render :show, status: :created, location: @archiwum }
      else
        format.html { render :new }
        format.json { render json: @archiwum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /archiwums/1
  # PATCH/PUT /archiwums/1.json
  def update
    respond_to do |format|
      if @archiwum.update(archiwum_params)
        format.html { redirect_to @archiwum, notice: 'Archiwum was successfully updated.' }
        format.json { render :show, status: :ok, location: @archiwum }
      else
        format.html { render :edit }
        format.json { render json: @archiwum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archiwums/1
  # DELETE /archiwums/1.json
  def destroy
    @archiwum.destroy
    respond_to do |format|
      format.html { redirect_to archiwums_url, notice: 'Archiwum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archiwum
      @archiwum = Archiwum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archiwum_params
      params.require(:archiwum).permit(:ID_wpisu, :ID_wizyty, :historia, :inf_dod)
    end
end
