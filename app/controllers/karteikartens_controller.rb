class KarteikartensController < ApplicationController
  before_action :set_karteikarten, only: [:show, :edit, :update, :destroy]

  # GET /karteikartens
  # GET /karteikartens.json
  def index
    @karteikartens = Karteikarten.all
  end

  # GET /karteikartens/1
  # GET /karteikartens/1.json
  def show
  end

  # GET /karteikartens/new
  def new
    @karteikarten = Karteikarten.new
  end

  # GET /karteikartens/1/edit
  def edit
  end

  # POST /karteikartens
  # POST /karteikartens.json
  def create
    @karteikarten = Karteikarten.new(karteikarten_params)

    respond_to do |format|
      if @karteikarten.save
        format.html { redirect_to @karteikarten, notice: 'Karteikarten was successfully created.' }
        format.json { render :show, status: :created, location: @karteikarten }
      else
        format.html { render :new }
        format.json { render json: @karteikarten.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /karteikartens/1
  # PATCH/PUT /karteikartens/1.json
  def update
    respond_to do |format|
      if @karteikarten.update(karteikarten_params)
        format.html { redirect_to @karteikarten, notice: 'Karteikarten was successfully updated.' }
        format.json { render :show, status: :ok, location: @karteikarten }
      else
        format.html { render :edit }
        format.json { render json: @karteikarten.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /karteikartens/1
  # DELETE /karteikartens/1.json
  def destroy
    @karteikarten.destroy
    respond_to do |format|
      format.html { redirect_to karteikartens_url, notice: 'Karteikarten was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_karteikarten
      @karteikarten = Karteikarten.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def karteikarten_params
      params.require(:karteikarten).permit(:titel, :vorderseite, :rueckseite, :aufrufe, :user_id, :kurse_id)
    end
end
