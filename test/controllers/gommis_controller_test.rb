require 'test_helper'

class GommisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gommi = gommis(:one)
  end

  test "should get index" do
    get gommis_url
    assert_response :success
  end

  test "should get new" do
    get new_gommi_url
    assert_response :success
  end

  test "should create gommi" do
    assert_difference('Gommi.count') do
      post gommis_url, params: { gommi: { explanation: @gommi.explanation, kind: @gommi.kind, title: @gommi.title } }
    end

    assert_redirected_to gommi_url(Gommi.last)
  end

  test "should show gommi" do
    get gommi_url(@gommi)
    assert_response :success
  end

  test "should get edit" do
    get edit_gommi_url(@gommi)
    assert_response :success
  end

  test "should update gommi" do
    patch gommi_url(@gommi), params: { gommi: { explanation: @gommi.explanation, kind: @gommi.kind, title: @gommi.title } }
    assert_redirected_to gommi_url(@gommi)
  end

  test "should destroy gommi" do
    assert_difference('Gommi.count', -1) do
      delete gommi_url(@gommi)
    end

    assert_redirected_to gommis_url
  end
end
