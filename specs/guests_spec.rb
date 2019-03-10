require('minitest/autorun')
require('minitest/rg')
require_relative('../entrance.rb')
require_relative('../room.rb')
require_relative('../guests.rb')
require_relative('../song.rb')

class GuestsTest < MiniTest::Test

  def setup
    @guests1 = Guests.new("E29 Karaoke Night", 100)
    @entrance1 = Entrance.new(2000, 50)
  end

  def test_check_guest_name
    assert_equal("E29 Karaoke Night", @guests1.check_guest_name)
  end

  def test_buy_entry
    @guests1.buy_entry(@entrance1)
    assert_equal(50, @guests1.cash())
  end

end
