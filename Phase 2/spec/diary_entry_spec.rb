require 'diary_entry'

RSpec.describe DiaryEntry do
    it 'returns the title of an entry' do
        de = DiaryEntry.new("Greeting", "Hello " * 1000)
        expect(de.title).to eq "Greeting"
    end
     
    it 'returns the contents of an entry' do
        de = DiaryEntry.new("Greeting", "Hello " * 1000)
        expect(de.contents).to eq ("Hello " * 1000)
    end

    it 'returns a count of the word of an entry' do
        de = DiaryEntry.new("Greeting", "Hello " * 1000)
        expect(de.count_words).to eq 1000
    end

    it 'returns 0 when contents is empty' do
        de = DiaryEntry.new("Greeting", "")
        expect(de.count_words).to eq 0
    end

    context 'reading time' do
        it 'returns a reading time given a wpm of 200' do
        de = DiaryEntry.new("Greeting", "Hello " * 1000)
        expect(de.reading_time(200)).to eq 5
        end
    end


    context 'reading chunk' do
        it 'returns a reading chink given the number or wpm' do
        de = DiaryEntry.new("Greeting", "Hello " * 10)
        expect(de.reading_chunk(10, 1)).to eq ("Hello " * 10)
        end

    end

#Need to add
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
end