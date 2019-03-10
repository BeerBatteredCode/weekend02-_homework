class Guests

attr_reader :guests, :cash
attr_writer :guests, :cash

  def initialize(name, cash)
    @name = name
    @cash = cash
  end

  def check_guest_name
    @name
  end

  def buy_entry(entrance)
    @cash -= entrance.charge()
  end

end
