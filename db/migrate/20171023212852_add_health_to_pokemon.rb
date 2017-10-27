class AddHealthToPokemon < ActiveRecord::Migration[5.1]
  def change
    add_column :pokemons, :Health, :integer
  end
end
