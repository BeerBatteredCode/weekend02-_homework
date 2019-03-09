require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guests.rb')
require_relative('../song.rb')

class GuestsTest < MiniTest::Test

  def setup
    @guests1 = Guests.new("E29 Karaoke Night")
  end

  def test_check_guest_name
    assert_equal("E29 Karaoke Night", @guests1.check_guest_name)
  end

end
