class FavoritensController < ApplicationController
  before_action :set_favoriten, only: [:show, :edit, :update, :destroy]

  # GET /favoritens
  # GET /favoritens.json
  def index
    @favoritens = Favoriten.all
  end

  # GET /favoritens/1
  # GET /favoritens/1.json
  def show
  end

  # GET /favoritens/new
  def new
    @favoriten = Favoriten.new
  end

  # GET /favoritens/1/edit
  def edit
  end

  # POST /favoritens
  # POST /favoritens.json
  def create
    @favoriten = Favoriten.new(favoriten_params)

    respond_to do |format|
      if @favoriten.save
        format.html { redirect_to @favoriten, notice: 'Favoriten was successfully created.' }
        format.json { render :show, status: :created, location: @favoriten }
      else
        format.html { render :new }
        format.json { render json: @favoriten.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favoritens/1
  # PATCH/PUT /favoritens/1.json
  def update
    respond_to do |format|
      if @favoriten.update(favoriten_params)
        format.html { redirect_to @favoriten, notice: 'Favoriten was successfully updated.' }
        format.json { render :show, status: :ok, location: @favoriten }
      else
        format.html { render :edit }
        format.json { render json: @favoriten.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favoritens/1
  # DELETE /favoritens/1.json
  def destroy
    @favoriten.destroy
    respond_to do |format|
      format.html { redirect_to favoritens_url, notice: 'Favoriten was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favoriten
      @favoriten = Favoriten.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favoriten_params
      params.require(:favoriten).permit(:user_id, :karteikarten_id)
    end
end
