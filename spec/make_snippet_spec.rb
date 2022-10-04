require 'make_snippet'

RSpec.describe 'make_snippet' do
    it 'returns an arguement' do
    result = make_snippet('Hello')
    expect(result).to eq 'Hello'
    end

    it 'returns the first 5 words' do
    result = make_snippet('Hello how are you feeling today')
    expect(result).to eq 'Hello how are you feeling'
    end

    
end
