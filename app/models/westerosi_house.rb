class WesterosiHouse
  attr_reader :url, :name, :region, :coat_of_arms, :words, :titles, :seats, :current_lord, :heir, :overlord,
:founded, :founder, :died_out, :ancestral_weapons, :cadet_branches, :sworn_members

  def initalize
    @url = url
    @name = name
    @region = region
    @coat_of_arms = coat_of_arms
    @words = words
    @titles = titles
    @seats = seats
    @current_lord = current_lord
    @heir = heir
    @overlord = overlord
    @founded = founded
    @founder = founder
    @died_out = died_out
    @ancestral_weapons = ancestral_weapons
    @cadet_branches = cadet_branches
    @sworn_members = sworn_members
  end

  def url
    get_house_data["url"]
  end

  def name
    get_house_data["name"]
  end

  def region
    get_house_data["region"]
  end

  def coat_of_arms
    get_house_data["coatOfArms"]
  end

  def words
    get_house_data["words"]
  end

  def titles
    get_house_data["titles"]
  end

  def seats
    get_house_data["seats"]
  end

  def current_lord
    get_house_data["currentLord"]
  end

  def heir
    get_house_data["heir"]
  end

  def overlord
    get_house_data["overlord"]
  end

  def founded
    get_house_data["founded"]
  end

  def founder
    get_house_data["founder"]
  end

  def died_out
    get_house_data["diedOut"]
  end

  def ancestral_weapons
    get_house_data["ancestralWeapons"]
  end

  def cadet_branches
    get_house_data["cadetBranches"]
  end

  def founder
    get_house_data["swornMembers"]
  end

  def get_house_data
    @house_data ||= WesterosiHouseCall.new.fetch_data
  end
end
