require "test_helper"

class UserTest < ActiveSupport::TestCase

  def setup
    @user = users(:one)
    @new_user = User.new(email: 'sample2@email.com', password: '123456')
  end

  test "valid user" do
    assert @user.valid?
  end

  test "invalid without email when creating a new account" do
    @new_user.email = nil
    refute @new_user.valid?
    assert_not_nil @new_user.errors[:email]
  end

  test "invalid without password when creating a new account" do
    @new_user.password = nil
    refute @new_user.valid?
    assert_not_nil @new_user.errors[:password]
  end

  test "invalid without email when signing in" do
    @new_user.email = nil
    refute @new_user.valid?
    assert_not_nil @new_user.errors[:email]
  end

  test '#category' do
    assert_equal 3, @user.categories.size
  end

end
