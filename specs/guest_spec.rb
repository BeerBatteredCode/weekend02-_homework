require('minitest/autorun')
require('minitest/rg')
require_relative('../entrance.rb')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("E29 Karaoke Night", 100, 31)
    @entrance1 = Entrance.new(2000, 50)
  end

  def test_check_guest_name
    assert_equal("E29 Karaoke Night", @guest1.check_guest_name)
  end

  def test_buy_entry
    @guest1.buy_entry(@entrance1)
    assert_equal(50, @guest1.cash())
  end

end
