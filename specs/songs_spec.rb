require("minitest/autorun")
require('minitest/rg')
require_relative("../songs.rb")

class SongsTest < MiniTest::Test

  def setup
    @song1 = Songs.new("Purple Rain by Prince")
    @song2 = Songs.new("Like a Prayer by Madonna")
    @song3 = Songs.new("I Want It That Way by Backstreet Boys")

  end

  def test_song_title()
    assert_equal("Purple Rain by Prince", @song1.title())
  end



end
