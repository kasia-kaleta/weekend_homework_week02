class Guests

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def pay_entry_fee(room)
    @wallet -= room.entry_fee()
  end

end
