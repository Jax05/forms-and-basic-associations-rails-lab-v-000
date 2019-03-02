class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name)
  end

  def artist_name
    self.artist.name if self.artist
  end

  def genre_name=(name)
    self.genre = Genre.find_or_create_by(name)
  end

  def genre_name
    self.genre.name if self.genre
  end

  def notes=(notes)
    notes.each do |note|
      note = Note.find(note)
      self.notes << note
    end
  end
end
