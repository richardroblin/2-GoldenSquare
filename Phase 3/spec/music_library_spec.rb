require 'music_library'

RSpec.describe MusicLibrary do
    it "add track to library " do
      ml = MusicLibrary.new
      ft = double :FakeTrack
    expect(ml.add(ft)).to eq [ft]
    end

    it "lists all tracks" do
        ml = MusicLibrary.new
        ft1 = double:FakeTrack1
        ft2 = double:FakeTrack2
        ft3 = double:FakeTrack3
        ml.add(ft1)
        ml.add(ft2)
        ml.add(ft3)
    expect(ml.all).to eq [ft1,ft2,ft3]
    end

    it 'returns a track that matches the keyword' do
        ml = MusicLibrary.new
        ft1 = double(:FakeTrack1, matches?: false)
        ft2 = double(:FakeTrack2, matches?: false)
        ft3 = double(:FakeTrack3, matches?: true)
        ml.add(ft1)
        ml.add(ft2)
        ml.add(ft3)
    expect(ml.search('Artist3')).to eq [ft3]
    end
end


