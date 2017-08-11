require('minitest/autorun')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class RoomSpec < MiniTest::Test

  def setup()
    @room = Room.new(20, 2, 5)
    @guest1 = Guest.new('Kyle Miller', 20)
    @guest2 = Guest.new('Michael Leadley', 150)
    @song = Song.new('song title', 'artist')
  end

  def test_check_in
    @room.check_in(@guest1)
    assert_equal("Kyle Miller", @room.guests[0])
  end

  def test_check_out
    @room.check_in(@guest1)
    @room.check_in(@guest2)
    @room.check_out(@guest1)
    assert_equal(['Michael Leadley'], @room.guests)
  end

  def test_add_song
    @room.add_song(@song)
    assert_equal(@room.songs, ['song title'])
  end

  def test_capacity
    counter = 0
    while counter < 2
      @room.check_in(@guest1)
      counter += 1
    end
    assert_equal("room is full", @room.check_in(@guest2) )
  end

  def test_entry_fee
    @room.entry_fee(@guest1.money)
    assert_equal(15, @room.entry_fee(@guest1.money))
  end

end
