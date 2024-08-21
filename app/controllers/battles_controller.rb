class BattlesController < ApplicationController
  def show
    @character_1 = Character.find(params[:player_1_id])
    @character_2 = Character.find(params[:player_2_id])

    @battle = Battle.new(character1: @character_1, character2: @character_2)
    @battle.save
  end
end
