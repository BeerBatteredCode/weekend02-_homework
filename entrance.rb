class Entrance

  attr_reader :till, :charge, :bar
  attr_writer :till, :charge

    def initialize(till, charge)
     @till = till
     @charge = charge
     @bar = []
    end

    def guest_has_money?(guest)
      return charge <= guest.cash
    end

    def divert_guest_to_bar(guest)
      @bar << guest
    end

    def sell_entry(guest)
      if guest_has_money?(guest)
        @till += @charge
      end
    end

    def access_to_karaoke_or_bar(guest)
      if (guest_has_money?(guest) && enough_space_for_guest?(guest))
        sell_entry(guest)
      else
        divert_guest_to_bar(guest)
      end
    end

end
