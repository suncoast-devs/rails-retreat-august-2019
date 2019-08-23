class GamesController < ApplicationController
  before_action :authenticate!, except: [:index, :show]
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  # GET /games
  def index
    @pagy, @games = pagy(Game.order(title: :asc))
  end

  # GET /games/1
  def show
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games
  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to @game, notice: "#{@game.title} was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /games/1
  def update
    if @game.update(game_params)
      redirect_to @game, notice: "#{@game.title} was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /games/1
  def destroy
    @game.destroy
    redirect_to games_url, notice: "#{@game.title} was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_game
    @game = Game.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def game_params
    params.require(:game).permit(:title, :description, :designer_names, :artist, :publisher, :min_players, :max_players, :play_time, :year, :cover_art, :min_age)
  end
end
