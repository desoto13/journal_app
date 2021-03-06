require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  def setup
    get new_user_session_path
    sign_in users(:one)
    post user_session_path

    @category = categories(:sample)
    @task = tasks(:one)
  end

  test "should show the selected task" do
    get edit_category_task_path(@category, @task)
    assert_response :success
  end

  test "should create a new task" do
    assert_difference("Task.count") do
      post category_tasks_path(@category), params: { task: { name: "Household Chores", description: "Washing the Dishes", deadline: Date.today} }
      assert_response :redirect
    end
  end

  test "should edit the task" do
    put category_task_path(@category, @task), params: { task: { name: "Household Chores", description: "Doing Laundry", deadline: Date.today } }
    assert_response :redirect
  end

  test "should delete the task" do
    assert_difference "Task.count", -1 do
      delete category_task_path(@category, @task)
      assert_response :redirect
    end
  end
  
end
