class LikesController < ApplicationController
	before_action :find_bee

	def create
		if already_liked?
			flash.alert = "You can't like a bee more than once"

		else
			@bee.likes.create(user_id: current_user.id)
			redirect_to bee_path(@bee)
		end
	end  

	private  

	def find_bee
		@bee = Bee.find(params[:bee_id])
	end

	def already_liked?
		Like.where(user_id: current_user.id, bee_id:  
			params[:bee_id]).exists?
	end

end
