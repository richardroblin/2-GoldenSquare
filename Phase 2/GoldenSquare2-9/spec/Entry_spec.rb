require 'Entry'

RSpec.describe Entry do
    context 'shows entry' do
        it 'returns an entry' do
        en1 = Entry.new("This is my first entry")
        expect(en1.entry).to eq "This is my first entry"
        end
    end
    
    context 'creates an entry' do
        it 'creates an entry' do
        en1 = Entry.new('This is my first entry')
        expect(en1.word_count).to eq 5
        end
    end

    context 'contacts' do
        it 'can return phone numbers' do
        en3 = Entry.new("This is an entry with a phone number 012345678910")
        expect(en3.contact_number).to eq '012345678910'
        end
    end 
end