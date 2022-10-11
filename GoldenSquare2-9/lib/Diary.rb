class Diary
    def initialize
        @Diary = []
    end

    def add(entry)
        @Diary << entry
        return 'Entry added.'
    end

    def list
        return @Diary.map{|e| e.entry}.join(', ')
    end

    def contact_list
        return @Diary.map{|e| e.contact_number}.join
    end

    def read_past_entry(time, wpm)
        return @Diary.map{|e| e.entry if (e.word_count<(time*wpm))}.join
    end
end
