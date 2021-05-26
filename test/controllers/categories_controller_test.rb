require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @category = categories(:sample)
  end

  test "should get category index page" do
    get categories_path
    assert_response :success
  end

  test "should go to new category page and create a new category" do
    get new_category_path
    assert_response :success

    assert_difference("Category.count") do
      post categories_path, params: { category: { name: "Newest Task", description: "This is the Newest Task" } }
      assert_response :redirect
    end
  
    follow_redirect!
    assert_response :success
  end

  test "should show the selected category" do
    get category_path(@category.id)
    assert_response :success
  end

  test "should go to edit category page and edit the category" do
    get category_path(@category.id)
    assert_response :success

    put category_path(@category.id), params: { category: { name: "Newest Task", description: "This is the Newest Task" } }
    assert_response :redirect

    follow_redirect!
    assert_response :success

  end

  test "should delete the category" do
    get category_path(@category.id)
    assert_response :success

    assert_difference "Category.count", -1 do
      delete category_path(@category.id)
      assert_response :redirect
    end
  
    follow_redirect!
    assert_response :success
  end
end
