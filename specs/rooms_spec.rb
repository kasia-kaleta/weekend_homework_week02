require("minitest/autorun")
require('minitest/rg')
require_relative("../rooms.rb")
require_relative("../songs.rb")
require_relative("../guests.rb")

class RoomsTest < MiniTest::Test

  def setup
    @room1 = Rooms.new("Sapphire", 8)
    @room2 = Rooms.new("Amber", 12)
    @room3 = Rooms.new("Amethyst", 16)

    @guest1 = Guests.new("Bob", 50, "Wrecking Ball by Miley Cyrus")
    @guest2 = Guests.new("Ally", 70, "Purple Rain by Prince")
    @guest3 = Guests.new("Peter", 40, "Creep by Radiohead")

    @song1 = Songs.new("Purple Rain by Prince")
    @song2 = Songs.new("Like a Prayer by Madonna")
    @song3 = Songs.new("I Want It That Way by Backstreet Boys")
  end

  def test_song_list_empty()
    assert_equal(0, @room1.songs_list())
  end

  def test_add_song_to_room()
    @room1.add_song_to_room(@song2)
    assert_equal(1, @room1.songs_list())
  end

  def test_how_many_guests_in_room()
    assert_equal(0, @room2.number_of_guests_in_room)
  end

  def test_check_in_guest_to_room()
    @room2.check_in_guest_to_room(@guest3)
    assert_equal(1, @room2.number_of_guests_in_room)
  end

  def test_check_out_guest_from_room()
    @room2.check_in_guest_to_room(@guest1)
    @room2.check_in_guest_to_room(@guest2)
    @room2.check_in_guest_to_room(@guest3)
    @room2.check_out_guest_from_room(@guest3)
    assert_equal(2, @room2.number_of_guests_in_room)
  end

  def test_room_limit()
    @room1.check_in_guest_to_room(@guest1)
    @room1.check_in_guest_to_room(@guest2)
    @room1.check_in_guest_to_room(@guest3)
    assert_equal(2, @room1.number_of_guests_in_room)
  end

  def test_get_guest_reaction_to_room()
    @room2.add_song_to_room(@song1)
    assert_equal("Woohoo!", @room2.get_guest_reaction_to_room(@guest2))
  end

end
