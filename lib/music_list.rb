class MusicList
    def initialize
        @music_list = []
    end

    def add(track)
        fail "Invalid Input" if not track.is_a? String 
        @music_list << track
    end 

    def showTracks
        return @music_list
    end
end 