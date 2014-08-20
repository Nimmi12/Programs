class LeaguesController < ApplicationController
  def index
  	@leagues = League.all
  end

  def new
  	@league = League.new

  end

  def create
  	@league = League.create(league_params)
    #redirect_to action: :index
    redirect_to leagues_path, notice:"League created successfully!!!!"
  end

  def update
    @league = League.find(params[:id])
    @league.update(league_params)
    redirect_to leagues_path, notice:"League updated successfully!!!!"

  end
  def edit
    @league = League.find(params[:id])
  end

  def destroy
     @league = League.find(params[:id])
     @league.destroy
     redirect_to leagues_path, notice:"League destroyed successfully!!!!"

  end

  private 
  def league_params
      params.require(:league).permit(:league_name, :start_date, :end_date, :location, :status)
  end
end
