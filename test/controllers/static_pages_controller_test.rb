require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get goal" do
    get static_pages_goal_url
    assert_response :success
    assert_select "title", "Goal | #{@base_title}"
  end

  test "should get threemonths_goal" do
    get static_pages_threemonths_goal_url
    assert_response :success
    assert_select "title", "Threemonths_goal | #{@base_title}"
  end

  test "should get monthly_goal" do
    get static_pages_monthly_goal_url
    assert_response :success
    assert_select "title", "Monthly_goal | #{@base_title}"
  end

  test "should get report" do
    get static_pages_report_url
    assert_response :success
    assert_select "title", "Report | #{@base_title}"
  end

  test "should get training_menu" do
    get static_pages_training_menu_url
    assert_response :success
    assert_select "title", "Training_menu | #{@base_title}"
  end

  test "should get participating_room" do
    get static_pages_participating_room_url
    assert_response :success
    assert_select "title", "Participating_room | #{@base_title}"
  end

  test "should get like" do
    get static_pages_like_url
    assert_response :success
    assert_select "title", "Like | #{@base_title}"
  end

  test "should get participationg_room_user" do
    get static_pages_participationg_room_user_url
    assert_response :success
    assert_select "title", "Participationg_room_user | #{@base_title}"
  end

  test "should get message" do
    get static_pages_message_url
    assert_response :success
    assert_select "title", "Message | #{@base_title}"
  end
end
