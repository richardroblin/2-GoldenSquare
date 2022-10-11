require 'task_tracker'

RSpec.describe TaskTracker do 
    context 'adding a task' do
        it 'adds a task' do
            tt = TaskTracker.new
            expect(tt.add_task('Wash Up')) == 'Wash Up added.'
        end 
        it 'flags an error if no task specified' do
            tt = TaskTracker.new
            expect{tt.add_task('')}.to raise_error 'No task specified.'
        end
    end

    context 'produces a task list' do
        it 'produces a list of 1 task' do
            tt = TaskTracker.new
            tt.add_task('Wash Up')
            expect(tt.task_list) == 'Wash Up'
        end 

        it 'produces a list of 2 tasks' do
            tt = TaskTracker.new
            tt.add_task('Wash Up')
            tt.add_task('hoover')
            expect(tt.task_list) == 'Wash Up, hoover'
        end 

        it 'produces a list when a task removed' do
            tt = TaskTracker.new
            tt.add_task('Wash Up')
            tt.add_task('hoover')
            tt.task_done('hoover')
            expect(tt.task_list) == 'Wash Up'
        end
        
    end

    context 'removes a task' do
        it 'removes a task error' do
            tt = TaskTracker.new
            tt.task_done('hoover')
            expect(tt.task_done('hover')) == 'not found'
        end 
        it 'removes a task successfully' do
            tt = TaskTracker.new
            tt.task_done('Wash Up')
            tt.task_done('hoover')
            expect(tt.task_done('hoover')) == 'task done! Wash Up remaining...'
        end
    end


end