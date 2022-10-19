require 'grammar_stats'

RSpec.describe GrammarStats do
    context 'check grammar' do
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
        it 'has no text' do
            gs = GrammarStats.new
            expect{gs.check('')}.to raise_error 'no text given'
        end
        it 'starts with a capital letter' do
            gs = GrammarStats.new
            expect(gs.check('Hello World')) == true
        end
        it 'ends with a fulls-stop' do 
            gs = GrammarStats.new
            expect(gs.check('Hello World.')) == true
        end
        it 'ends with a fulls-stop' do 
            gs = GrammarStats.new
            expect(gs.check('hello World.')) == false
        end
        it 'ends with a fulls-stop' do 
            gs = GrammarStats.new
            expect(gs.check('Hello World')) == false
        end
    end

    context 'check pass rate of checks'
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    it 'returns an integer' do
        gs = GrammarStats.new
        gs.check('hello world')
        gs.check('Hello world' )
        gs.check('Hello world.')
        gs.check('Hello World.')
        expect(gs.percentage_good) == 50
    end
end
