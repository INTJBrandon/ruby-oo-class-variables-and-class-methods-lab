require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre
        @@genres << self.genre
        @@artists << self.artist
        @@count += 1
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        
        genre_count = {}
        @@genres.each do | item |
            if !genre_count.key?(item)
                genre_count[item] = 1
            elsif genre_count.key?(item)
                genre_count[item] = genre_count[item] + 1
            end
        end
        genre_count
    end

    def self.artists
        @@artists.uniq

    end

    def self.artist_count
        artist_count = {}
        @@artists.each do | item |
            if !artist_count.key?(item)
                artist_count[item] = 1
            elsif artist_count.key?(item)
                artist_count[item] = artist_count[item] + 1
            end
        end
        artist_count
    end
end