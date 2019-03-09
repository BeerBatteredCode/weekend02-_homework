class Bar_Lounge

attr_reader :till, :lounge, :k_rooms

 def initialize(till)
   @till = till
   @lounge = []
   @k_rooms = []
 end

 def karaoke_rooms_in_array(rooms)
   (@k_rooms << rooms).flatten!
 end

 def guests_in_lounge(guest1)
   @lounge << guest1
 end

 def guests_in_karaoke_room(rooms)
   (@k_rooms << rooms).flatten!
      @k_rooms.each do |check|
        


 end

end
