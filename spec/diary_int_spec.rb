require 'diary'
require 'diary_entry'

RSpec.describe Diary do
    context 'adding entries to Diary ' do
        it 'can add entries to Diary ' do
            diary = Diary.new
            entry1 = DiaryEntry.new('the_title', 'the_contents')
        expect(diary.add(entry1)).to eq nil
        end
    end

    context 'count words of entries' do
        it 'can total words of all entries' do
            diary = Diary.new
            entry1 = DiaryEntry.new('the_title', 'the_contents')
            entry2 = DiaryEntry.new('the_next_title', 'the_next_contents')
            diary.add(entry1)
            diary.add(entry2)
            entry1_wc = entry1.count_words
            entry2_wc = entry2.count_words
        expect(diary.count_words).to eq entry1_wc + entry2_wc
        end
    end

    context 'reading times' do
        it 'calculates the total reading time for all entries' do
            diary = Diary.new
            entry1 = DiaryEntry.new('the_title', 'the_contents')
            entry2 = DiaryEntry.new('the_next_title', 'the_next_contents')
            diary.add(entry1)
            diary.add(entry2)
        expect(diary.reading_time(2)).to eq 1
        end
    end

    context 'get best entry to read given time available' do
        it 'return entries' do
            diary = Diary.new
            entry1 = DiaryEntry.new('the_title', 'the_contents')
            entry2 = DiaryEntry.new('the_next_title', 'the_next_contents')
            diary.add(entry1)
            diary.add(entry2)
        expect(diary.find_best_entry_for_reading_time(2,2)).to eq [entry1, entry2]
        end
    end
    
end