class KursesController < ApplicationController
  before_action :set_kurse, only: [:show, :edit, :update, :destroy]

  # GET /kurses
  # GET /kurses.json
  def index
    @kurses = Kurse.all
  end

  # GET /kurses/1
  # GET /kurses/1.json
  def show
  end

  # GET /kurses/new
  def new
    @kurse = Kurse.new
  end

  # GET /kurses/1/edit
  def edit
  end

  # POST /kurses
  # POST /kurses.json
  def create
    @kurse = Kurse.new(kurse_params)

    respond_to do |format|
      if @kurse.save
        format.html { redirect_to @kurse, notice: 'Kurse was successfully created.' }
        format.json { render :show, status: :created, location: @kurse }
      else
        format.html { render :new }
        format.json { render json: @kurse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kurses/1
  # PATCH/PUT /kurses/1.json
  def update
    respond_to do |format|
      if @kurse.update(kurse_params)
        format.html { redirect_to @kurse, notice: 'Kurse was successfully updated.' }
        format.json { render :show, status: :ok, location: @kurse }
      else
        format.html { render :edit }
        format.json { render json: @kurse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kurses/1
  # DELETE /kurses/1.json
  def destroy
    @kurse.destroy
    respond_to do |format|
      format.html { redirect_to kurses_url, notice: 'Kurse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kurse
      @kurse = Kurse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kurse_params
      params.require(:kurse).permit(:kursname, :gruppen_id)
    end
end
