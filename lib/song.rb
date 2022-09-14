class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    #You'll need a class variable, let's call it @@artists, that is equal to an empty array.
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
    end

    def self.count 
        @@count
    end 

    def self.genre_count
        @@genres.tally
    end 

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.artist_count
        @@artists.tally
    end 


end 

# You can need to iterate over the @@genres array and populate a hash with the key/value pairs. You will need to check to see if the hash already contains a key of a particular genre. If so, increment the value of that key by one, otherwise, create a new key/value pair.
# You can also look into the #tally (Links to an external site.) method.
# words.filter { |word| word != nil }.map(&:capitalize)