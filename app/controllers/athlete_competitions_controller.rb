class AthleteCompetitionsController < ApplicationController
  before_action :set_athlete_competition, only: [:show, :edit, :update, :destroy]

  # GET /athlete_competitions
  # GET /athlete_competitions.json
  def index
    @athlete_competitions = AthleteCompetition.all
  end

  # GET /athlete_competitions/1
  # GET /athlete_competitions/1.json
  
  def show
  end

  # GET /athlete_competitions/new
  # We pass the athletes and competitions as well
  # This way they can be selected for the creation of a new AthleteCompetition
  def new
    @athletes = Athlete.all
    @competitions = Competition.all

    @athlete_competition = AthleteCompetition.new
  end

  # GET /athlete_competitions/1/edit
  def edit
    @athletes = Athlete.all
    @competitions = Competition.all
  end

  # POST /athlete_competitions
  # POST /athlete_competitions.json
  def create
    @athlete_competition = AthleteCompetition.new(athlete_competition_params)

    respond_to do |format|
      if @athlete_competition.save
        format.html { redirect_to @athlete_competition, notice: I18n.t('athletes_competitions_controller.created') }
        format.json { render :show, status: :created, location: @athlete_competition }
      else
        format.html { render :new }
        format.json { render json: @athlete_competition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /athlete_competitions/1
  # PATCH/PUT /athlete_competitions/1.json
  def update
    respond_to do |format|
      if @athlete_competition.update(athlete_competition_params)
        format.html { redirect_to @athlete_competition, notice: I18n.t('athletes_competitions_controller.updated') }
        format.json { render :show, status: :ok, location: @athlete_competition }
      else
        format.html { render :edit }
        format.json { render json: @athlete_competition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /athlete_competitions/1
  # DELETE /athlete_competitions/1.json
  def destroy
    @athlete_competition.destroy
    respond_to do |format|
      format.html { redirect_to athlete_competitions_url, notice: I18n.t('athletes_competitions_controller.destroyed') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_athlete_competition
      @athlete_competition = AthleteCompetition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def athlete_competition_params
      params.require(:athlete_competition).permit(:athlete_id, :competition_id)
    end
end
