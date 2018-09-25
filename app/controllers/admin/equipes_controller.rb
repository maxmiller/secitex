class Admin::EquipesController < ApplicationController
  def index
  	authorize! :index, Equipe
    @equipes = Equipe.all
  end

  def new
    authorize! :new, Equipe
    @equipe = Equipe.new
  end

  def show
  	authorize! :show, @equipe
  end

  def edit
  	return true
  end
end
