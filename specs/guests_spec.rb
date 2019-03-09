require('minitest/autorun')
require('minitest/rg')
require_relative('../bar_lounge.rb')
require_relative('../room.rb')
require_relative('../guests.rb')
require_relative('../song.rb')

class GuestsTest < MiniTest::Test

  def setup
    @guests1 = Guests.new("E29 Karaoke Night", 31, 150, "Perfect Tonight")
  end

  def test_guest_details
    assert_equal("E29 Karaoke Night", @guests1.guest_details)
    assert_equal(31, @guests1.guest_details)
    assert_equal(150, @guests1.guest_details)
    assert_equal("Perfect Tonight", @guests1.guest_details)
  end

end
