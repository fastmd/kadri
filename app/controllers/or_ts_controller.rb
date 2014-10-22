
class OrTsController < ApplicationController

	def create
		@monter = Monter.find(params[:monter_id])
		@ORT = @monter.ORTs.create(params[:ORT])
		redirect_to post_path(@monter)
	end

end
