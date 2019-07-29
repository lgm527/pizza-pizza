require 'test_helper'

class PizzaToppingControllerTest < ActionDispatch::IntegrationTest
  test "should get pizza:belongs_to" do
    get pizza_topping_pizza:belongs_to_url
    assert_response :success
  end

  test "should get topping:belongs_to" do
    get pizza_topping_topping:belongs_to_url
    assert_response :success
  end

end
