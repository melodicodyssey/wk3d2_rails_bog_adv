class BogsController < ApplicationController

	def index
		@bogs = Bogs.all
		render :index
	end

	def new
		render :new
	end

	def create
		creature = params.require(:bog).permit(:name, :description)
		new_creature = Bogs.create(creature)
		redirect_to "/bog/#{new_creature.id}"
	end

	def show
		id = params[:id]
		@creature = Bogs.find(id)
		render :show
	end

	def edit
		id = params[:id]
		@creature = Bogs.find(id)
		render :edit
	end

	def update
		id = params[:id]
		updates = params.require(:bog).permit(:name, :description)
		creature = Bogs.find(id)
		creature.update_attributes(updates)
		redirect_to "/bog/#{id}"
	end

	def delete
		id = params[:id]
		creature = Bogs.find(id)
		Bogs.delete(id)
		redirect_to "/"
	end


end
