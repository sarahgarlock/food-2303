class FoodFacade

  def search_food(food)
    service = FoodService.new
    request = service.search_food(food)
    @foods = request[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
end