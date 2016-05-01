class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
    render :index
  end

  def new
    @creature = Creature.new
    render :new
  end

  def create
    Creature.create(creature_params)
    redirect_to creatures_path
  end

  private

  def creature_params
    params.required(:creature).permit(:name, :description)
  end

end
