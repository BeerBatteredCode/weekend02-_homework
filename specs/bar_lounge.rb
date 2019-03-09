require('minitest/autorun')
require('minitest/rg')
require_relative('../bar_lounge.rb')
require_relative('../room.rb')
require_relative('../guests.rb')
require_relative('../song.rb')

class Bar_LoungeTest < MiniTest::Test

  def setup
    @bar_lounge = Bar_Lounge.new(2000)

    @guests1 = Guests.new("E29 Karaoke Night", 31, 150, "Perfect Tonight")

    @room1 = Room.new(15)
    @room2 = Room.new(15)
    @room3 = Room.new(15)
    @room4 = Room.new(15)
    @room5 = Room.new(30)
    @room6 = Room.new(30)
    @room7 = Room.new(30)
    @room8 = Room.new(45)
    @room9 = Room.new(45)
    @rooms = [@room1, @room2, @room3, @room4, @room5, @room6, @room7, @room8, @room9]
  end

  def test_karaoke_rooms_in_array
    @bar_lounge.karaoke_rooms_in_array(@rooms)
    assert_equal(9, @bar_lounge.k_rooms.count)
  end

  def test_guests_in_lounge
    @bar_lounge.guests_in_lounge(@guest1)
    assert_equal(1, @bar_lounge.lounge.count)
  end

  def test_guests_in_karaoke_room
    @bar_lounge.guests_in_karaoke_room(@rooms)
    assert_equal(9, @bar_lounge.k_rooms.count)
  end







end
