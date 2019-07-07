require("minitest/autorun")
require('minitest/rg')
require_relative("../bar.rb")
require_relative("../guests.rb")
require_relative("../rooms.rb")

class BarItemTest < MiniTest::Test

  def setup
    @bar_item1 = BarItem.new("wine", 6)
    @bar_item2 = BarItem.new("beer", 4)
    @bar_item3 = BarItem.new("cider", 5)

  end

  def test_bar_item_has_drink()
    assert_equal("beer", @bar_item2.drink)
  end

  def test_bar_item_has_price()
    assert_equal(5, @bar_item3.price)
  end

end
