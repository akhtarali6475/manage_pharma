require 'test_helper'

class SchemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scheme = schemes(:one)
  end

  test "should get index" do
    get schemes_url
    assert_response :success
  end

  test "should get new" do
    get new_scheme_url
    assert_response :success
  end

  test "should create scheme" do
    assert_difference('Scheme.count') do
      post schemes_url, params: { scheme: { avatars: @scheme.avatars, description: @scheme.description, end_date: @scheme.end_date, price: @scheme.price, published: @scheme.published, start_date: @scheme.start_date, title: @scheme.title } }
    end

    assert_redirected_to scheme_url(Scheme.last)
  end

  test "should show scheme" do
    get scheme_url(@scheme)
    assert_response :success
  end

  test "should get edit" do
    get edit_scheme_url(@scheme)
    assert_response :success
  end

  test "should update scheme" do
    patch scheme_url(@scheme), params: { scheme: { avatars: @scheme.avatars, description: @scheme.description, end_date: @scheme.end_date, price: @scheme.price, published: @scheme.published, start_date: @scheme.start_date, title: @scheme.title } }
    assert_redirected_to scheme_url(@scheme)
  end

  test "should destroy scheme" do
    assert_difference('Scheme.count', -1) do
      delete scheme_url(@scheme)
    end

    assert_redirected_to schemes_url
  end
end
