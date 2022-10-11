require 'Task'

RSpec.describe Task do
    context 'creates an task' do
        it 'creates an task' do
        t1 = Task.new('This is my first task')
        expect(t1.task).to eq 'This is my first task'
        end
    end
end