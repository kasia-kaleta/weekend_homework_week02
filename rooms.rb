class Rooms

  attr_reader :room_name, :entry_fee, :songs, :guests

  def initialize(room_name, entry_fee)
    @room_name = room_name
    @entry_fee = entry_fee
    @songs = []
    @guests = []
    @stock = []
  end

  def add_song_to_room(song)
    @songs.push(song)
  end

  def songs_list
    return @songs.length()
  end

  def number_of_guests_in_room()
    return @guests.length()
  end

  def check_in_guest_to_room(guest)
    if @guests.length >= 2
      return
    else
      @guests << guest
    end
    p get_guest_reaction_to_room(guest)
  end

  def check_out_guest_from_room(guest)
    @guests.delete(guest)
  end

  def get_guest_reaction_to_room(guest)
    for song in @songs
      if song.title == guest.favorite_song
        return "Woohoo!"
      end
    end
  end

end
