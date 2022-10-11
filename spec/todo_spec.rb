require 'todo'

RSpec.describe Todo do
    context 'adds task' do
        it 'fails if not task provided' do
            expect{Todo.new('')}.to raise_error 'No task specified'
        end

        it 'adds a task' do
            todo = Todo.new('Have breakfast')
            expect(todo.task).to eq 'Have breakfast'
        end
    end

    context 'updates task' do
        it 'marks as done' do
            todo = Todo.new('Have breakfast')
            expect(todo.mark_done!).to eq nil
        end
    end

    context 'returns true/false if a task is done' do
        it 'returns a task when true' do
            todo = Todo.new('Have breakfast')
            todo_done = todo.mark_done!
            expect(todo.done?).to eq true
        end
    end
end
