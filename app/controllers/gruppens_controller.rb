class GruppensController < ApplicationController
  before_action :set_gruppen, only: [:show, :edit, :update, :destroy, :vote]

  # GET /gruppens
  # GET /gruppens.json
  def index
    @gruppens = Gruppen.all
  end

  # GET /gruppens/1
  # GET /gruppens/1.json
  def show
  end

  # GET /gruppens/new
  def new
    @gruppen = Gruppen.new
  end

  # GET /gruppens/1/edit
  def edit
  end

  # POST /gruppens
  # POST /gruppens.json
  def create
    @gruppen = Gruppen.new(gruppen_params)

    respond_to do |format|
      if @gruppen.save
        format.html { redirect_to @gruppen, notice: 'Gruppen was successfully created.' }
        format.json { render :show, status: :created, location: @gruppen }
      else
        format.html { render :new }
        format.json { render json: @gruppen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gruppens/1
  # PATCH/PUT /gruppens/1.json
  def update
    respond_to do |format|
      if @gruppen.update(gruppen_params)
        format.html { redirect_to @gruppen, notice: 'Gruppen was successfully updated.' }
        format.json { render :show, status: :ok, location: @gruppen }
      else
        format.html { render :edit }
        format.json { render json: @gruppen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gruppens/1
  # DELETE /gruppens/1.json
  def destroy
    @gruppen.destroy
    respond_to do |format|
      format.html { redirect_to gruppens_url, notice: 'Gruppen was successfully destroyed.' }
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

    @gruppen.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gruppen
      @gruppen = Gruppen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gruppen_params
      params.require(:gruppen).permit(:gruppenname)
    end
end
