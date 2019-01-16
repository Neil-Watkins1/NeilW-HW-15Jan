require("minitest/autorun")
require("minitest/rg")

require_relative("../bear")
require_relative("../river")
require_relative("../fish")


class TestBear < MiniTest::Test

  def setup

    # @fish1 = Fish.new("Salmon")
    # @fish2 = Fish.new("Trout")
    # @fish3 = Fish.new("Tuna")

    @Bear = Bear.new("Booboo", "Grizzly")


  end

  def test_stomach_fish_count
    assert_equal(0, @Bear.stomach.count)
  end

  def test_add_eaten_fish
    @Bear.add_eaten_fish(@fish1)
    assert_equal(1, @Bear.stomach.count)
  end

  def test_bear_talk
    assert_equal("Grrrr", @Bear.bear_talk())
  end
end

# A bear should be able to take a fish from the river
#
# A river should lose a fish when a bear takes a fish
