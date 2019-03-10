require('minitest/autorun')
require('minitest/rg')
require_relative('../entrance.rb')
require_relative('../room.rb')
require_relative('../guests.rb')
require_relative('../song.rb')

class EntranceTest < MiniTest::Test

  def setup
    @entrance1 = Entrance.new(2000, 50)

    @room1 = Room.new()

    @guest1 = Guests.new("E29 Karaoke Night", 100)
    @guest2 = Guests.new("E28 Poetry Slam", 50)
    @guest3 = Guests.new("E27 Silent Prayer", 70)
    @guest4 = Guests.new("Placeholder", 20)
    @guest5 = Guests.new("Placeholder", 30)
    @guest6 = Guests.new("Placeholder", 130)
    @group = [@guest1, @guest2, @guest3, @guest4, @guest5, @guest6]
  end

  def test_guest_has_money?
    @entrance1.guest_has_money?(@guest1)
    assert_equal(true, @entrance1.guest_has_money?(@guest1))
  end

  def test_sell_entry
    @entrance1.sell_entry(@guest1)
    @entrance1.sell_entry(@guest2)
    @entrance1.sell_entry(@guest3)
    @entrance1.sell_entry(@guest4)
    @entrance1.sell_entry(@guest5)
    @entrance1.sell_entry(@guest6)
    assert_equal(2200, @entrance1.till())
  end

end
