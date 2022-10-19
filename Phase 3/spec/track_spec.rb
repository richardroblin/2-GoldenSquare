require 'track'

RSpec.describe 'Track' do
    it 'creates a track' do
        tr = Track.new('One Kiss', 'Calvin Harris')
    expect(tr).to eq tr
    end

    it 'matches title or artist' do
        tr = Track.new('One Kiss', 'Calvin Harris')
    expect(tr.matches?('Calvin')).to eq true
    expect(tr.matches?('Kiss')).to eq true
    expect(tr.matches?('Elbow')).to eq false
    end
end
