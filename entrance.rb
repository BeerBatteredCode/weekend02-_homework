class Entrance

  attr_reader :till, :charge
  attr_writer :till, :charge

    def initialize(till, charge)
     @till = till
     @charge = charge
     @bar = []
    end

    def guest_has_money?(guests)
      return charge <= guests.cash
    end


    def sell_entry(guests)
      if guest_has_money?(guests)
        @till += @charge
      end
    end
end
