require 'music_library'
require 'track'

RSpec.describe 'Integration' do
    it "add tracks to library " do
        ml = MusicLibrary.new
        track1 = Track.new('Title1', 'Artist1')
      expect(ml.add(track1)).to eq [track1]
    end




    it 'returns a track that matches the keyword' do
        ml = MusicLibrary.new
        track1 = Track.new('Title1', 'Artist1')
        track2 = Track.new('Title2', 'Artist2')
        track3 = Track.new('Title3', 'Artist3')
        ml.add(track1)
        ml.add(track2)
        ml.add(track3)
    expect(ml.search('Artist3')).to eq [track3]
    end
end