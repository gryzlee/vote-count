class ComitteesController < ApplicationController
  before_action :set_comittee, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /comittees
  # GET /comittees.json
  def index
    @comittees = Comittee.all
  end

  # GET /comittees/1
  # GET /comittees/1.json
  def show
    @assosciated_voivodeships = @comittee.voivodeships.map(&:name).join(", ")
  end

  # GET /comittees/new
  def new
    @comittee = Comittee.new
  end

  # GET /comittees/1/edit
  def edit
  end

  # POST /comittees
  # POST /comittees.json
  def create
    @comittee = Comittee.new(comittee_params)
    @voivodeship = Voivodeship.all
    respond_to do |format|
      if @comittee.save
        format.html { redirect_to @comittee, notice: 'Comittee was successfully created.' }
        format.json { render :show, status: :created, location: @comittee }
      else
        format.html { render :new }
        format.json { render json: @comittee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comittees/1
  # PATCH/PUT /comittees/1.json
  def update
    respond_to do |format|
      if @comittee.update(comittee_params)
        format.html { redirect_to @comittee, notice: 'Comittee was successfully updated.' }
        format.json { render :show, status: :ok, location: @comittee }
      else
        format.html { render :edit }
        format.json { render json: @comittee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comittees/1
  # DELETE /comittees/1.json
  def destroy
    @comittee.destroy
    respond_to do |format|
      format.html { redirect_to comittees_url, notice: 'Comittee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comittee
      @comittee = Comittee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comittee_params
      params.require(:comittee).permit(:name, :avatar, :comittee_id, :constituency_id, :votes_attributes, :voivodeship_ids => [])
    end
end
