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

    def sell_entry(guest, room)
      if guest_has_money?(guest)
        @till += @charge
        room.add_guest_to_room(guest)
      end
    end

    def access_to_karaoke_or_bar(guest, room)
      if (guest_has_money?(guest) && room.enough_space_for_guest?(guest))
        sell_entry(guest, room)
      else
        divert_guest_to_bar(guest)
      end
    end

end
