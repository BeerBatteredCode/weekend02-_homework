class Room

attr_reader :space, :karaoke_room, :playlist

 def initialize(space)
   @space = space
   @karaoke_room = []
   @playlist = []
 end

 def songs_in_playlist(songs)
   (@playlist << songs).flatten!
 end

 def guests_in_karaoke_room(guests1)
   @karaoke_room << guests1
 end

end
