class BeantwortetsController < ApplicationController
  before_action :set_beantwortet, only: [:show, :edit, :update, :destroy]

  # GET /beantwortets
  # GET /beantwortets.json
  def index
    @beantwortets = Beantwortet.all
  end

  # GET /beantwortets/1
  # GET /beantwortets/1.json
  def show
  end

  # GET /beantwortets/new
  def new
    @beantwortet = Beantwortet.new
  end

  # GET /beantwortets/1/edit
  def edit
  end

  # POST /beantwortets
  # POST /beantwortets.json
  def create
    @beantwortet = Beantwortet.new(beantwortet_params)

    respond_to do |format|
      if @beantwortet.save
        format.html { redirect_to @beantwortet, notice: 'Beantwortet was successfully created.' }
        format.json { render :show, status: :created, location: @beantwortet }
      else
        format.html { render :new }
        format.json { render json: @beantwortet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beantwortets/1
  # PATCH/PUT /beantwortets/1.json
  def update
    respond_to do |format|
      if @beantwortet.update(beantwortet_params)
        format.html { redirect_to @beantwortet, notice: 'Beantwortet was successfully updated.' }
        format.json { render :show, status: :ok, location: @beantwortet }
      else
        format.html { render :edit }
        format.json { render json: @beantwortet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beantwortets/1
  # DELETE /beantwortets/1.json
  def destroy
    @beantwortet.destroy
    respond_to do |format|
      format.html { redirect_to beantwortets_url, notice: 'Beantwortet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beantwortet
      @beantwortet = Beantwortet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beantwortet_params
      params.require(:beantwortet).permit(:user_id)
    end
end
