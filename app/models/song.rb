class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def genre_id=(id)
    self.genre = Genre.find(id)
  end

  def genre_name
    self.genre ? self.genre.name : nil
  end

  def notes_1=(note)
    self.notes.build(content: note)
  end

  def notes_1
    self.notes[0] ? self.notes[0].name : nil
  end

  def notes_2=(note)
    self.notes.build(content: note)
  end

  def notes_2
    self.notes[1] ? self.notes[1].name : nil
  end
end
