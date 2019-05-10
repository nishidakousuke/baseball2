class ResultsController < ApplicationController
    before_action :set_batter

  def index
  end

  def new
    @batters = Batter.all
    @result = Result.new
  end

  def create
    Result.create(batting_params)
    redirect_to :action => "index"
  end

  private
  def batting_params
    params.require(:result).permit(:bats, :hitting, :homerun, :point, :steal).merge(batter_id: 1)
  end

  def set_batter
    @batter = Batter.all
  end

end
