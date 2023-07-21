class Food
  attr_reader :code,
              :description,
              :brandOwner,
              :ingredients,
              :totalHits

  def initialize(data)
    @code = data[:gtinUpc]
    @description = data[:description]
    @brandOwner = data[:brandOwner]
    @ingredients = data[:ingredients]
    @totalHits = data[:totalHits]
  end
end