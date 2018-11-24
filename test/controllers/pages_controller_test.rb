require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get pages_inicio_url
    assert_response :success
  end

  test "should get nosotros" do
    get pages_nosotros_url
    assert_response :success
  end

  test "should get servicios" do
    get pages_servicios_url
    assert_response :success
  end

  test "should get contactenos" do
    get pages_contactenos_url
    assert_response :success
  end

end
