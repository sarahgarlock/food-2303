class FoodFacade
  def FoodService
    FoodService.new
  end

  def foods
    json = service.search_food(food)
    json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
end