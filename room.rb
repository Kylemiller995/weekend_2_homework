class Room

  attr_accessor(:number, :capacity, :guests, :songs, :entry_fee)


  def initialize(number, capacity, entry_fee)
    @number = number
    @capacity = capacity
    @entry_fee = entry_fee
    @guests = []
    @songs = []
  end

  def check_in(guest)
    guest_number = @guests.size
    if  @guests.size < @capacity
      @guests << guest.name
    end
    return "room is full"
  end

  def check_out(guest)
    for person in @guests
      if person == guest.name
        @guests.delete(person)
      end
    end
  end

  def add_song(song)
    @songs << song.name
  end

  def entry_fee(guest_money)
    if guest_money >= @entry_fee
      return guest_money -= @entry_fee
    else
      return "not enough money"
    end
  end

end
