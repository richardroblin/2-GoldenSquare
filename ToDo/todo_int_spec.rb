require 'todo'
require 'todo_list'

RSpec.describe TodoList do
    context 'add todo instances' do
        it 'add two instances' do
        task1 = Todo.new('Have breakfast')
        list=TodoList.new
        
        expect(list.add(task1)).to eq nil
        end
    end

    context 'returns incomplete todos' do
        it 'returns incomplete tasks' do
            task1 = Todo.new('Have breakfast')
            task2 = Todo.new('Have shower')
            list = TodoList.new
            list.add(task1)
            list.add(task2)
            task1.mark_done!
        expect(list.incomplete).to eq 'Have shower'
        end
    end

    context 'returns complete todos' do
        it 'returns complete tasks' do
            task1 = Todo.new('Have breakfast')
            task2 = Todo.new('Have shower')
            list = TodoList.new
            list.add(task1)
            list.add(task2)
            task1.mark_done!
        expect(list.complete).to eq 'Have breakfast - done!'
        end     
    end

    context 'Marks all todos as complete' do
        it 'updates all tasks as done' do
            task1 = Todo.new('Have breakfast')
            task2 = Todo.new('Have shower')
            list = TodoList.new
            list.add(task1)
            list.add(task2)
            task1.mark_done!
        expect(list.give_up!).to eq <<-E"Have breakfast - done!"
"Have shower - done!"
                                    E
                                    
        end
    end

end

