require "test_helper"

class CategoryTest < ActiveSupport::TestCase

  def setup
    @category = categories(:sample)
  end

  test "valid category" do
    assert @category.valid?
  end

  test "invalid without user" do
    @category.user_id = nil
    refute @category.valid?, 'category is valid without a user'
    assert_not_nil @category.errors[:user_id], 'no validation error for name present'
  end

  test "invalid without name" do
    @category.name = nil
    refute @category.valid?, 'category is valid without a name'
    assert_not_nil @category.errors[:name], 'no validation error for name present'
  end

  test "invalid without description" do
    @category.description = nil
    refute @category.valid?
    assert_not_nil @category.errors[:description]
  end

  test '#tasks' do
  assert_equal 2, @category.tasks.size
  end
end
