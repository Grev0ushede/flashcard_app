require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Flashcard"
    @mixed_title = "| #{@base_title}"
  end


  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help #{@mixed_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About #{@mixed_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact #{@mixed_title}"
  end


end
