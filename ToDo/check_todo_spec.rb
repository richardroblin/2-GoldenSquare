require 'check_todo'

RSpec.describe 'check todo' do
    context 'given an empty string' do
        it 'fails' do
            expect{check_todo('')}.to raise_error 'No todo in string'
        end
    end
    context 'string contains todo' do
        it 'contains todo' do
            expect(check_todo("todo")).to eq true
        end
        it 'finds todo in string' do
            expect(check_todo("This text contains todo in it.")).to eq true
        end
    end
    context 'string without todo' do
        it 'doesnt contain todo' do
            expect(check_todo("Some text")).to eq false
        end
    end
end
