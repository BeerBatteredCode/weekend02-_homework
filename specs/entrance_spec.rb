require('minitest/autorun')
require('minitest/rg')
require_relative('../entrance.rb')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class EntranceTest < MiniTest::Test

  def setup
    @entrance1 = Entrance.new(2000, 50)

    @room1 = Room.new(35)

    @guest1 = Guest.new("E29 Karaoke Night", 100, 31)
    @guest2 = Guest.new("E28 Poetry Slam", 50, 28)
    @guest3 = Guest.new("E27 Silent Prayer", 70, 25)
    @guest4 = Guest.new("Placeholder", 20, 40)
    @guest5 = Guest.new("Placeholder", 30, 12)
    @guest6 = Guest.new("Placeholder", 130, 50)
    @group = [@guest1, @guest2, @guest3, @guest4, @guest5, @guest6]

  end

  def test_guest_has_money?
    @entrance1.guest_has_money?(@guest1)
    assert_equal(true, @entrance1.guest_has_money?(@guest1))
  end

  def test_divert_guest_to_bar
    @entrance1.divert_guest_to_bar(@guest1)
    assert_equal(1, @entrance1.bar.count)
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

  def test_access_to_karaoke_or_bar
    @entrance1.access_to_karaoke_or_bar(@guest1)
    assert_equal(true, @entrance1.guest_has_money())
    assert_equal(true, @entrance1.enough_space_for_guest?())
    assert_equal(2050, @entrance1.till())
  end


end
