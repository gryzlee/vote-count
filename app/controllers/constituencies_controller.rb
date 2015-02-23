class ConstituenciesController < ApplicationController
  load_and_authorize_resource
  before_filter :authenticate_user!

  # GET /constituencies
  # GET /constituencies.json
  def index
    
  end

  # GET /constituencies/1
  # GET /constituencies/1.json
  def show

  end

  # GET /constituencies/new
  def new

  end

  # GET /constituencies/1/edit
  def edit
    @constituency.votes.build
  end

  # POST /constituencies
  # POST /constituencies.json
  def create

    respond_to do |format|
      if @constituency.save
        format.html { redirect_to @constituency, notice: 'Constituency was successfully created.' }
        format.json { render :show, status: :created, location: @constituency }
      else
        format.html { render :new }
        format.json { render json: @constituency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /constituencies/1
  # PATCH/PUT /constituencies/1.json
  def update
    respond_to do |format|
      if @constituency.update(constituency_params)
        format.html { redirect_to @constituency, notice: 'Constituency was successfully updated.' }
        format.json { render :show, status: :ok, location: @constituency }
      else
        format.html { render :edit }
        format.json { render json: @constituency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /constituencies/1
  # DELETE /constituencies/1.json
  def destroy
    @constituency.destroy
    respond_to do |format|
      format.html { redirect_to constituencies_url, notice: 'Constituency was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def votes
    @comittees = @constituency.voivodeship.comittees.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def constituency_params
      params.require(:constituency).permit(:name, :voters, :voivodeship_id, :comittee_attributes, votes_attributes: [ :id, :comittee_id, :constituency_id, :quantity ])
    end
end
