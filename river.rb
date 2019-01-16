class River

  attr_accessor :name, :fish_pop

  def initialize (name, fish_pop)

    @name = name
    @fish_pop = fish_pop

  end

  def fish_pop
    return @fish_pop.count
  end

  def remove_eaten_fish(fish)
    @fish_pop.delete(fish)
    dead_fish =[fish]
  end


  # etract a fish from the river and send to the bear
  # A bear should be able to take a fish from the river
  #
  # A river should lose a fish when a bear takes a fish
end
