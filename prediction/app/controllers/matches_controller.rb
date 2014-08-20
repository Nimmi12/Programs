class MatchesController < ApplicationController
	def index
		@matches = Match.where(:league_id => params[:id])
    @@league_id = params[:id]
	end

  def new
    @match  = Match.new
  end

  def create
    #render plain: match_params
    @match = Match.new(match_params)
    @match.league_id = @@league_id
    @match.save
    redirect_to action: :index,:id => @@league_id,notice: "new match created!!!"
  end

  def update
    @match = Match.find(params[:id])
    @match.update(match_params)
    redirect_to action: :index,:id => @@league_id, notice:"match updated successfully!!!!"
  end

  def edit
    @match = Match.find(params[:id])
  end

  def destroy
     @match = Match.find(params[:id])
     @match.destroy
     redirect_to  action: :index,:id => @@league_id,notice:"match destroyed successfully!!!!"
  end

  private 

  def match_params
      params.require(:match).permit(:matchname, :date, :time)
  end

end
