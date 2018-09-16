require 'test_helper'

class SuggetionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suggetion = suggetions(:one)
  end

  test "should get index" do
    get suggetions_url
    assert_response :success
  end

  test "should get new" do
    get new_suggetion_url
    assert_response :success
  end

  test "should create suggetion" do
    assert_difference('Suggetion.count') do
      post suggetions_url, params: { suggetion: { closestatus: @suggetion.closestatus, customername: @suggetion.customername, estimatedate: @suggetion.estimatedate, flag: @suggetion.flag, memo: @suggetion.memo, moviedate: @suggetion.moviedate, username: @suggetion.username } }
    end

    assert_redirected_to suggetion_url(Suggetion.last)
  end

  test "should show suggetion" do
    get suggetion_url(@suggetion)
    assert_response :success
  end

  test "should get edit" do
    get edit_suggetion_url(@suggetion)
    assert_response :success
  end

  test "should update suggetion" do
    patch suggetion_url(@suggetion), params: { suggetion: { closestatus: @suggetion.closestatus, customername: @suggetion.customername, estimatedate: @suggetion.estimatedate, flag: @suggetion.flag, memo: @suggetion.memo, moviedate: @suggetion.moviedate, username: @suggetion.username } }
    assert_redirected_to suggetion_url(@suggetion)
  end

  test "should destroy suggetion" do
    assert_difference('Suggetion.count', -1) do
      delete suggetion_url(@suggetion)
    end

    assert_redirected_to suggetions_url
  end
end
