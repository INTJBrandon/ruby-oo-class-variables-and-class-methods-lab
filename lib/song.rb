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
        self.class.genres << self.genre
        self.class.artists << self.artist
        @@count += 1
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres
    end

    def self.genre_count
    end

    def self.artists
        artist_list = @@artists.uniq

    end

    def self.artist_count
    end
end