class MusicList

    def initialize
        @List = []
    end

    def add_track(str)
        @List << str
        return "#{str} added"
    end

    def list_tracks
        if @List.empty? == true
            return fail 'List is empty'
        else @List.join(", ")
        end
    end

end