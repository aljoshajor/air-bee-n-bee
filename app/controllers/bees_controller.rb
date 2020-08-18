class BeesController < ApplicationController

	def index		
	end

	def new
		@bee = Bee.new
	end

		def create
			@bee = Bee.new(bee_params)
			@bee.user_id = current_user.id
				if	@bee.save
					redirect_to bee_path(@bee)
				else
					render :new
				end
		end

		def show 
			@bee = Bee.find(params[:id])
		end


		private

		def bee_params 
			params.require(:bee).permit(:name, :description, :user_id)
		end
end
