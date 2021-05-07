require "test_helper"

class TableausControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tableau = tableaus(:one)
  end

  test "should get index" do
    get tableaus_url
    assert_response :success
  end

  test "should get new" do
    get new_tableau_url
    assert_response :success
  end

  test "should create tableau" do
    assert_difference('Tableau.count') do
      post tableaus_url, params: { tableau: { content: @tableau.content, image: @tableau.image, title: @tableau.title } }
    end

    assert_redirected_to tableau_url(Tableau.last)
  end

  test "should show tableau" do
    get tableau_url(@tableau)
    assert_response :success
  end

  test "should get edit" do
    get edit_tableau_url(@tableau)
    assert_response :success
  end

  test "should update tableau" do
    patch tableau_url(@tableau), params: { tableau: { content: @tableau.content, image: @tableau.image, title: @tableau.title } }
    assert_redirected_to tableau_url(@tableau)
  end

  test "should destroy tableau" do
    assert_difference('Tableau.count', -1) do
      delete tableau_url(@tableau)
    end

    assert_redirected_to tableaus_url
  end
end
