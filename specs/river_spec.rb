require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../fish")
require_relative("../bear")


class TestRiver < MiniTest::Test
  def setup

    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")
    @fish3 = Fish.new("Tuna")

    @river = River.new("Clyde", [@fish1, @fish2, @fish2])
  end

  def test_river_name
    assert_equal("Clyde", @river.name)
  end

  def test_fish_pop

    assert_equal(3, @river.fish_pop)
  end


  def test_remove_eaten_fish
    @river.remove_eaten_fish(@fish1)
    assert_equal(2, @river.fish_pop)
  end
  # remove a fish from the river
  # check river fish count has reduced
  # add the fish to the bears stomach
  # check the fish in stomach count has increased

  # A bear should be able to take a fish from the river
  #
  # A river should lose a fish when a bear takes a fish
end
