class Note < ActiveRecord::Base
  belongs_to :song

  def song_notes=(notes)
    notes.each do |note|
      note = Note.find(note)
      self.songs << note
    end
  end
end
