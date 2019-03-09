require('minitest/autorun')
require('minitest/rg')
require_relative('../bar_lounge.rb')
require_relative('../room.rb')
require_relative('../guests.rb')
require_relative('../song.rb')

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new(20)

    @guest1 = Guests.new("E29 Karaoke Night", 31, 150, "Perfect Tonight")

    @song1 = Song.new("Perfect Tonight")
    @song2 = Song.new("So Perfect Tonight")
    @song3 = Song.new("Pure Perfect Tonight")
    @song4 = Song.new("Pure Mad Perfect Tonight")
    @song5 = Song.new("Perfect Tonight (Dubstep Remix)")
    @songs = [@song1, @song2, @song3, @song4, @song5]
  end

  def test_songs_in_playlist
    @room1.songs_in_playlist(@songs)
    assert_equal(5, @room1.playlist.count)
  end

  def test_guests_in_karaoke_room
    @room1.guests_in_karaoke_room(@guests1)
    assert_equal(1, @room1.karaoke_room.count)
  end

end
