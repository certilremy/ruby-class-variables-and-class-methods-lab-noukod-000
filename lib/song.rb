class Song
attr_accessor :name, :genre, :artist
@@artists=[]
@@genres=[]
@@count = 0

def initialize (name, genre, artist)
  @@count +=1
self.name = name
self.genre = genre
self.artist = artist
@@artists << artist
@@genres << genre
end

  def self.artists
    @@artists.uniq
  end
  def self.genres
      @@genres.uniq
    end

    def self.genre_count
        genres_hash = Hash.new(0)
        @@genres.each do |genre|
          genres_hash[genre]+=1
        end
        genres_hash
      end

      def self.artist_count
          artist_hash = Hash.new(0)
          @@artists.each do |artist|
            artist_hash[artist]+=1
          end
          artist_hash
        end

        def self.count
    @@count
  end
end
