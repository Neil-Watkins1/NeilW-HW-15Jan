class Bear

  attr_accessor :name, :type, :stomach

  def initialize(name, type)

    @name = name
    @type = type
    @stomach = []

  end

  def bear_talk
    return "Grrrr"
  end

  def add_eaten_fish
    @fish_pop.unshift(dead_fish)

  end

  def stomach_fish_count
    return @stomach.count
  end


end


# A bear should be able to take a fish from the river
#
# A river should lose a fish when a bear takes a fish
