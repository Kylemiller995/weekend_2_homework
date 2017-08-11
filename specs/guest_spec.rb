require('minitest/autorun')
require_relative('../guest.rb')

class GuestSpec < MiniTest::Test

  def setup
    @guest = Guest.new('Kyle Miller', 100)
  end

  def test_guest_name
    assert_equal("Kyle Miller", @guest.name)
  end

end
