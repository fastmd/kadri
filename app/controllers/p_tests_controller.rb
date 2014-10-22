
class PTestsController < ApplicationController

  def create
    @monter = Monter.find(params[:monter_id])
    @ptest = @monter.ptests.create(params[:ptest])
    redirect_to monter_path(@monter)
  end

end
