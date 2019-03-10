class Guest

attr_reader :guest, :cash, :size
attr_writer :guest, :cash

  def initialize(name, cash, size)
    @name = name
    @cash = cash
    @size = size
  end

  def check_guest_name
    @name
  end

  def buy_entry(entrance)
    @cash -= entrance.charge()
  end

end
