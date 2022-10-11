require 'music_list'

RSpec.describe MusicList do
    context 'call list' do
        it 'returns message when list is empty' do
        ml = MusicList.new
        expect{ml.list_tracks}.to raise_error 'List is empty'
        end

        it 'returns a lust of tracks when multiple tracks added' do
        ml = MusicList.new
        ml.add_track('Thriller')
        ml.add_track('Sweet Child Of Mine')
        expect(ml.list_tracks).to eq 'Thriller, Sweet Child Of Mine'
        end

    end

    context 'add tracks' do
        it 'adds a single track' do
            ml = MusicList.new
        expect(ml.add_track('Thriller')).to eq 'Thriller added'
        end
    end


end