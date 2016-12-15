# to find all Task.all
# to manually change user_id that is already in the database
  # to find an item in the terminal run @task = Task.find(4) (4 in this case is the id number of the tasks)
  # @task.user_id = 1 (1 in this case is the current user id that we want to change it to)
  # @task.save


# ran rails generate migration add_user_id_to_tasks user_id:integer in the command line to create this page
class AddUserIdToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :user_id, :integer
  end
end
