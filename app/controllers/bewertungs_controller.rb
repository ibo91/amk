class BewertungsController < ApplicationController
  before_action :set_bewertung, only: [:show, :edit, :update, :destroy]

  # GET /bewertungs
  # GET /bewertungs.json
  def index
    @bewertungs = Bewertung.all
  end

  # GET /bewertungs/1
  # GET /bewertungs/1.json
  def show
  end

  # GET /bewertungs/new
  def new
    @bewertung = Bewertung.new
  end

  # GET /bewertungs/1/edit
  def edit
  end

  # POST /bewertungs
  # POST /bewertungs.json
  def create
    @bewertung = Bewertung.new(bewertung_params)

    respond_to do |format|
      if @bewertung.save
        format.html { redirect_to @bewertung, notice: 'Bewertung was successfully created.' }
        format.json { render :show, status: :created, location: @bewertung }
      else
        format.html { render :new }
        format.json { render json: @bewertung.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bewertungs/1
  # PATCH/PUT /bewertungs/1.json
  def update
    respond_to do |format|
      if @bewertung.update(bewertung_params)
        format.html { redirect_to @bewertung, notice: 'Bewertung was successfully updated.' }
        format.json { render :show, status: :ok, location: @bewertung }
      else
        format.html { render :edit }
        format.json { render json: @bewertung.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bewertungs/1
  # DELETE /bewertungs/1.json
  def destroy
    @bewertung.destroy
    respond_to do |format|
      format.html { redirect_to bewertungs_url, notice: 'Bewertung was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  #->Prelang (voting/acts_as_votable)
  def vote

    direction = params[:direction]

    # Make sure we've specified a direction
    raise "No direction parameter specified to #vote action." unless direction

    # Make sure the direction is valid
    unless ["like", "bad"].member? direction
      raise "Direction '#{direction}' is not a valid direction for vote method."
    end

    @bewertung.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bewertung
      @bewertung = Bewertung.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bewertung_params
      params.require(:bewertung).permit(:bewertungswert, :user_id, :karteikarten_id)
    end
end
