class FoodService
  def search_food(food)
    response = get_url("search?query=#{food}")
    {
      foods: response[:foods],
      totalHits: response[:totalHits]
    }
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/foods') do |faraday|
      faraday.params['api_key'] = ENV['api_key']
    end
  end
end