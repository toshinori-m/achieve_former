require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 3
    assert_select "a[href=?]", goal_path
    assert_select "a[href=?]", threemonths_goal_path
    assert_select "a[href=?]", monthly_goal_path
    assert_select "a[href=?]", report_path
    assert_select "a[href=?]", training_menu_path
    assert_select "a[href=?]", participating_room_path
    assert_select "a[href=?]", like_path
    assert_select "a[href=?]", participationg_room_user_path
    assert_select "a[href=?]", message_path
  end
end
