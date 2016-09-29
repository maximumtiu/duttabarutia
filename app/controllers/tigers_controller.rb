class TigersController < ApplicationController
  def index
    @tigers = Tiger.all
  end

  def show
    @tiger = Tiger.find_by(params[:id])
  end
end
