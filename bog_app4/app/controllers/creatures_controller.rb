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

  def show
    @creature = Creature.find(params[:id])
  end

  def edit
    @creature = Creature.find(params[:id])
    render :edit
  end

  def update
    @creature = Creature.find(params[:id])
    if @creature.update(creature_params)
      redirect_to creature_path, notice: 'Creature was successfully updated.'
    else
      render :edit
    end
  end


private

def creature_params
  params.required(:creature).permit(:name, :description)
end


end
