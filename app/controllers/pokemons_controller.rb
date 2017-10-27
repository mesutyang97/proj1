class PokemonsController < ApplicationController
	def capture
		pokemon = Pokemon.find(params[:id])
		pokemon.trainer_id = current_trainer.id
		pokemon.save
		redirect_to root_url
	end

	def damage
		pokemon = Pokemon.find(params[:id])
		pokemon.Health = pokemon.Health - 10
		if pokemon.Health > 0
			pokemon.save
		else
			pokemon.destroy
		end
		redirect_to trainer_path(params[:trainer_id])
	end

	def new
		@pokemon = Pokemon.new
		# @pokemon.save
	end

	def create
		@pokemon = Pokemon.new
		@pokemon.name = params[:pokemon][:name]
		@pokemon.Health = 100
		@pokemon.trainer_id = current_trainer.id
		@pokemon.level = 1
		@pokemon.save
		if @pokemon.valid?
			redirect_to trainer_path(current_trainer.id)
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to pageToNewPokemon_path
		end
	end



end
