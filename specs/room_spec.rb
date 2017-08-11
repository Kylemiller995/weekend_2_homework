require('minitest/autorun')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class RoomSpec < MiniTest::Test

  def setup()
    @room = Room.new(20, 4)
    @guest1 = Guest.new('Kyle Miller')
    @guest2 = Guest.new('Michael Leadley')
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


end
