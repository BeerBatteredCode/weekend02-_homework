require('minitest/autorun')
require('minitest/rg')
require_relative('../entrance.rb')
require_relative('../room.rb')
require_relative('../guests.rb')
require_relative('../song.rb')

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new()

    @guest1 = Guests.new("E29 Karaoke Night", 100)
    @guest2 = Guests.new("E28 Lame Karaoke Night", 50)
    @guest3 = Guests.new("E27 Silent Prayer Night", 70)
    @guest4 = Guests.new("E30 Gettin' Hazed by E29", 40)
    @group = [@guest1, @guest2, @guest3]

    @song1 = Song.new("Perfect Tonight")
    @song2 = Song.new("So Perfect Tonight")
    @song3 = Song.new("Pure Perfect Tonight")
    @song4 = Song.new("Pure Mad Perfect Tonight")
    @song5 = Song.new("Perfect Tonight (Dubstep Remix)")
    @songs = [@song1, @song2, @song3, @song4, @song5]
  end

  def test_add_songs_to_playlist
    @room1.add_songs_to_playlist(@songs)
    assert_equal(5, @room1.songs.count)
  end

  def test_add_tune_to_playlist
    @room1.add_tune_to_playlist(@song1)
    assert_equal(1, @room1.songs.count)
  end

  def test_add_group_to_room
    @room1.add_group_to_room(@group)
    assert_equal(3, @room1.k_room.count)
  end

  def test_add_guest_to_room
    @room1.add_guest_to_room(@guests1)
    assert_equal(1, @room1.k_room.count)
  end

  def test_remove_guest_from_room
    @room1.remove_guest_from_room(@guest1)
    assert_equal(0, @room1.k_room.count)
  end

  def test_mvp_requirement
    @room1.mvp_requirement(@group, @guest1, @songs)
    assert_equal(2, @room1.k_room.count)
    assert_equal(5, @room1.songs.count)
  end

end
