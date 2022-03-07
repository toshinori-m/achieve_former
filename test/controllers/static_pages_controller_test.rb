require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "achieve one's goal"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get goal" do
    get goal_path
    assert_response :success
    assert_select "title", "Goal | #{@base_title}"
  end

  test "should get threemonths_goal" do
    get threemonths_goal_path
    assert_response :success
    assert_select "title", "Threemonths_goal | #{@base_title}"
  end

  test "should get monthly_goal" do
    get monthly_goal_path
    assert_response :success
    assert_select "title", "Monthly_goal | #{@base_title}"
  end

  test "should get report" do
    get report_path
    assert_response :success
    assert_select "title", "Report | #{@base_title}"
  end

  test "should get training_menu" do
    get training_menu_path
    assert_response :success
    assert_select "title", "Training_menu | #{@base_title}"
  end

  test "should get participating_room" do
    get participating_room_path
    assert_response :success
    assert_select "title", "Participating_room | #{@base_title}"
  end

  test "should get like" do
    get like_path
    assert_response :success
    assert_select "title", "Like | #{@base_title}"
  end

  test "should get participationg_room_user" do
    get participationg_room_user_path
    assert_response :success
    assert_select "title", "Participationg_room_user | #{@base_title}"
  end

  test "should get message" do
    get message_path
    assert_response :success
    assert_select "title", "Message | #{@base_title}"
  end
end
