class Room

attr_reader :k_room, :playlist, :space

  def initialize(space)
    @space = space
    @k_room = []
    @playlist = []
  end

  def add_songs_to_playlist(songs)
    (@playlist << songs).flatten!
  end

  def add_tune_to_playlist(songs)
    (@playlist << songs).flatten!
  end

  def add_guest_to_room(guest)
    (@k_room << guest)
  end

  def add_group_to_room(group)
    (@k_room << group).flatten!
  end

  def remove_guest_from_room(guest)
    @k_room << guest
    @k_room.delete(guest)
  end

  def set_up_room_for_group(group, guest, songs)
    add_group_to_room(group)
    add_songs_to_playlist(songs)
    remove_guest_from_room(guest)
  end

  def enough_space_for_guest?(guest)
    return space >= guest.size
  end

  # def check_for_favourite_song(guest, songs)
  #   add_songs_to_playlist(songs)
  #   add_guest_to_room(guest)
  #   @playlist.include?("Perfect Tonight")
  # end
end
