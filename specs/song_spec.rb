require('minitest/autorun')
require('minitest/rg')
require_relative('../entrance.rb')
require_relative('../room.rb')
require_relative('../guests.rb')
require_relative('../song.rb')

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Superbad")
  end

  def test_song_recognised
    assert_equal("Superbad", @song1.song_recognised)
  end

end
