require('minitest/autorun')
require_relative('../song.rb')

class SongSpec < MiniTest::Test

  def setup
    @song = Song.new("she knows", 'j cole')
  end


  def test_song_name
    assert_equal("she knows", @song.name)
  end

  # def test_song_length
  #   assert_equal(3.23, @song.length)
  # end

  def test_song_artist
    assert_equal("j cole", @song.artist)
  end

  def test_set_song_name
    @song.name = "butts"
    assert_equal(@song.name, "butts")
  end

  # def test_set_song_length
  #   @song.length = 4.00
  #   assert_equal(@song.length, 4.00)
  # end

  def test_set_song_title
    @song.artist = "kyle"
    assert_equal(@song.artist, "kyle")
  end


end
