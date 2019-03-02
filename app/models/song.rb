class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name)
  end

  def artist_name
    self.artist.name
  end
end
