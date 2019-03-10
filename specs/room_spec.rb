require('minitest/autorun')
require('minitest/rg')
require_relative('../entrance.rb')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new(35)

    @guest1 = Guest.new("E29 Karaoke Night", 100, 31)
    @guest2 = Guest.new("E28 Lame Karaoke Night", 50, 27)
    @guest3 = Guest.new("E27 Silent Prayer Night", 70, 25)
    @guest4 = Guest.new("E30 Gettin' Hazed by E29", 40, 36)
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
    assert_equal(5, @room1.playlist.count)
  end

  def test_add_tune_to_playlist
    @room1.add_tune_to_playlist(@song1)
    assert_equal(1, @room1.playlist.count)
  end

  def test_add_group_to_room
    @room1.add_group_to_room(@group)
    assert_equal(3, @room1.k_room.count)
  end

  def test_add_guest_to_room
    @room1.add_guest_to_room(@guest1)
    assert_equal(1, @room1.k_room.count)
  end

  def test_remove_guest_from_room
    @room1.remove_guest_from_room(@guest1)
    assert_equal(0, @room1.k_room.count)
  end

  def test_set_up_room_for_group
    @room1.set_up_room_for_group(@group, @guest1, @songs)
    assert_equal(2, @room1.k_room.count)
    assert_equal(5, @room1.playlist.count)
  end

  def test_enough_space_for_guest?
    @room1.enough_space_for_guest?(@guest1)
    @room1.enough_space_for_guest?(@guest4)
    assert_equal(true, @room1.enough_space_for_guest?(@guest1))
    assert_equal(false, @room1.enough_space_for_guest?(@guest4))
  end

  # def test_check_for_favourite_song
  #   @room1.check_for_favourite_song(@guest1, @songs)
  #   assert_equal(5, @room1.playlist.count)
  #   assert_equal(true, @room1.check_for_favourite_song(@guest1, @songs))
  # end
end
