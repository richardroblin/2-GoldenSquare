require 'Entry'
require 'Diary'

RSpec.describe 'Diary' do
    context 'Add Entry to diary' do
        it 'adds entry' do
            diary1 = Diary.new
            en1 = Entry.new('This is my first entry')
        expect(diary1.add(en1)).to eq 'Entry added.'
        end
    end

    context 'Lists diary entries' do
        it 'lists all entries' do
            diary1 = Diary.new
            en1 = Entry.new('This is my first entry')
            en2 = Entry.new('This is my second entry')
            diary1.add(en1)
            diary1.add(en2)
        expect(diary1.list).to eq "This is my first entry, This is my second entry"
        end
    end

    context 'Lists phone numbers' do
        it 'can search for contact phone numbers' do
            diary1 = Diary.new
            en1 = Entry.new('This is my first entry')
            en2 = Entry.new('This is my second entry')
            en3 = Entry.new("This is an entry with a phone number 012345678910")
            diary1.add(en1)
            diary1.add(en2)
            diary1.add(en3)
            expect(diary1.contact_list).to eq "012345678910"
        end
    end

    context 'Select entries based on reading time and speed' do
        it 'can select an entry' do
            diary1 = Diary.new
            en1 = Entry.new("This is my first entry")
            en2 = Entry.new("This is my second entry and its cool!")
            diary1.add(en1)
            diary1.add(en2)
        expect(diary1.read_past_entry(1, 6) ).to eq "This is my first entry"
        end
    end
end
