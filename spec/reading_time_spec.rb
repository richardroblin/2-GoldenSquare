require 'reading_time'

RSpec.describe "estimates reading time" do
    it 'returns 0 if no text is provided)' do
        result = read_text("")
        expect(result).to eq 0
    end

    it 'returns a number in minutes' do
        result = read_text("how are you feeling today")
        expect(result).to eq 1
    end
    
end

