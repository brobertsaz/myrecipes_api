class RecipesController < ApplicationController
  # before_action :authenticate_user

  def index
    render json: Recipe.all
  end
end
