class FoodsController < ApplicationController
  def index
    @search_query = params[:q]
    response_data = FoodService.new.search_food(@search_query)

    @foods = FoodFacade.new.search_food(params[:q])
    @total_hits = response_data[:totalHits]
  end
end