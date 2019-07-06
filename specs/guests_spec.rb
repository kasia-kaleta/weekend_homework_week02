require("minitest/autorun")
require('minitest/rg')
require_relative("../guests.rb")
require_relative("../rooms.rb")

class GuestsTest < MiniTest::Test

  def setup
    @guest1 = Guests.new("Bob", 50, "Wrecking Ball by Miley Cyrus")
    @guest2 = Guests.new("Ally", 70, "Purple Rain by Prince")
    @guest3 = Guests.new("Peter", 40, "Creep by Radiohead")

    @guests = [@guest1, @guest2, @guest3]

    @room1 = Rooms.new("Sapphire", 8)

  end

  def test_guest_has_name
    assert_equal("Ally", @guest2.name())
  end

  def test_guest_has_money
    assert_equal(50, @guest1.wallet())
  end

  def test_guest_has_favorite_song
    assert_equal("Creep by Radiohead", @guest3.favorite_song())
  end

  def test_pay_entry_fee
    @guest3.pay_entry_fee(@room1)
    assert_equal(32, @guest3.wallet())
  end

end
