class Food
  attr_reader :code,
              :description,
              :brandOwner,
              :ingredients

  def initialize(data)
    @code = data[:gtinUpc]
    @description = data[:description]
    @brandOwner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end