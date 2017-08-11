class Room

  attr_accessor(:number, :capacity, :guests, :songs)


  def initialize(number, capacity)
    @number = number
    @capacity = capacity
    @guests = []
    @songs = []
  end

  def check_in(guest)
    @guests << guest.name
  end

  # def check_out(guest)
  #   guest_name = guest.name
  #   for person in @guests
  #     if person == guest_name
  #       @guests.pop(person)
  #     end
  #   end
  # end

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




end




#
# def check_out(name)
#   for guest in @guests
#     if guest.name == name
#       @guests.delete(guest)
#     end
#   end
# end
#
