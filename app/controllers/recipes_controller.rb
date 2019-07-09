class RecipesController < ApplicationController
  def index
    if params[:looking_for]
    @search_term = params[:looking_for] || 'fruits'
    @recipes = Recipee.for(@search_term)
    end
  end 
  
end
