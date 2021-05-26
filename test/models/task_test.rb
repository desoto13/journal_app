require "test_helper"

class TaskTest < ActiveSupport::TestCase
  
  def setup
    @task = tasks(:one)
  end

  test "valid task" do
    assert @task.valid?
  end

  test "invalid without belonging to a category" do
    @task.category_id = nil
    refute @task.valid?, 'task is valid without a category'
    assert_not_nil @task.errors[:category_id], 'no validation error for task present'
  end

  test "invalid without name" do
    @task.name = nil
    refute @task.valid?, 'task is valid without a name'
    assert_not_nil @task.errors[:description], 'no validation error for name present'
  end

  test "invalid without description" do
    @task.description = nil
    refute @task.valid?
    assert_not_nil @task.errors[:description]
  end

end
