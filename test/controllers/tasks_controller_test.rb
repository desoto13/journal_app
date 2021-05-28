require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest

  def setup
    @category = categories(:sample)
    @task = tasks(:one)
  end

  test "should show the selected category and create a new task" do
    get new_category_task_path(@category)
    assert_response :success

    assert_difference("Task.count") do
      post category_tasks_path(@category), params: { task: { name: "Household Chores", description: "Washing the Dishes", deadline: Date.today} }
      assert_response :redirect
    end

    follow_redirect!
    assert_response :success
  end

  test "should show the selected task and edit it" do
    get edit_category_task_path(@category, @task)
    assert_response :success

    put category_task_path(@category, @task), params: { task: { name: "Household Chores", description: "Doing Laundry", deadline: Date.today } }
    assert_response :redirect

    follow_redirect!
    assert_response :success
  end

  test "should show the task and delete it" do
    get category_task_path(@category, @task)
    assert_response :success

    assert_difference "Task.count", -1 do
      delete category_task_path(@category, @task)
      assert_response :redirect
    end
  
    follow_redirect!
    assert_response :success
  end
end
