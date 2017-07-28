class HouseCall
  include HTTParty
  base_url 'https://anapioficeandfire.com/api/houses/'

  def fetch_data
    self.class.get("/api")
  end
end
