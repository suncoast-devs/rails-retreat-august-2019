class PlaysController < ApplicationController

  # POST /games/1/plays
  def create
    @game = Game.find(params[:game_id])
    play = @game.plays.new(play_params)

    if play.save
      redirect_to @game, notice: "Logged a play for #{@game.title}"
    else
    end
  end

  # DELETE /games/1/plays/1
  def destroy
    @game = Game.find(params[:game_id])
    play = @game.plays.find(params[:id])
    play.destroy

    redirect_to @game, notice: "Unlogged a play for #{@game.title}"
  end

  private

  def play_params
    params.require(:play).permit(:note, :played_on)
  end
end
