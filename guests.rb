class Guests

  attr_reader :name, :wallet, :favorite_song

  def initialize(name, wallet, favorite_song)
    @name = name
    @wallet = wallet
    @favorite_song = favorite_song
  end

  def pay_entry_fee(room)
    @wallet -= room.entry_fee()
  end

end
