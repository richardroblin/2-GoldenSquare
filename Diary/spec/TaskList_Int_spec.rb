require 'TaskList'
require 'Task'

RSpec.describe TaskList do
    context 'adds task to TaskList' do
        it 'adds a task' do
            tl1 = TaskList.new
            t1 = Task.new('This is my first task')
        expect(tl1.add(t1)).to eq 'Task added'
        end
    end
end
