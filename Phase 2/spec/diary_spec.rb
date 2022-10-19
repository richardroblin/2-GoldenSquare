require 'diary'

RSpec.describe Diary do
    context 'when listing entries' do
        it 'returns all entries' do
            diary = Diary.new
            entry1 = DiaryEntry.new('the_title', 'the_contents')
            entry2 = DiaryEntry.new('the_next_title', 'the_next_contents')
            diary.add(entry1)
            diary.add(entry2)
        expect(diary.all).to eq [entry1, entry2]
        end
    end

   

end