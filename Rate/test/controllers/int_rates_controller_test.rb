require 'test_helper'

class IntRatesControllerTest < ActionController::TestCase
  setup do
    @int_rate = int_rates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:int_rates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create int_rate" do
    assert_difference('IntRate.count') do
      post :create, int_rate: { CreationDate: @int_rate.CreationDate, EffectiveDate: @int_rate.EffectiveDate, InterestRate: @int_rate.InterestRate }
    end

    assert_redirected_to int_rate_path(assigns(:int_rate))
  end

  test "should show int_rate" do
    get :show, id: @int_rate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @int_rate
    assert_response :success
  end

  test "should update int_rate" do
    patch :update, id: @int_rate, int_rate: { CreationDate: @int_rate.CreationDate, EffectiveDate: @int_rate.EffectiveDate, InterestRate: @int_rate.InterestRate }
    assert_redirected_to int_rate_path(assigns(:int_rate))
  end

  test "should destroy int_rate" do
    assert_difference('IntRate.count', -1) do
      delete :destroy, id: @int_rate
    end

    assert_redirected_to int_rates_path
  end
end
