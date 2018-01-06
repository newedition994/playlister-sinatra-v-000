class Song < ActiveRecord::Base
  belongs_to :artists
  has_many :song_genres
  has_many :genres, :through => :song_genres

  def slug
    name.downcase.gsub(" ","-")
  end
end
