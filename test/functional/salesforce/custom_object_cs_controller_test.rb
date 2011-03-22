require 'test_helper'

class Salesforce::CustomObject_csControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salesforce_custom_object_cs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custom_object_c" do
    assert_difference('Salesforce::CustomObject_c.count') do
      post :create, :custom_object_c => { }
    end

    assert_redirected_to custom_object_c_path(assigns(:custom_object_c))
  end

  test "should show custom_object_c" do
    get :show, :id => salesforce_custom_object_cs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => salesforce_custom_object_cs(:one).to_param
    assert_response :success
  end

  test "should update custom_object_c" do
    put :update, :id => salesforce_custom_object_cs(:one).to_param, :custom_object_c => { }
    assert_redirected_to custom_object_c_path(assigns(:custom_object_c))
  end

  test "should destroy custom_object_c" do
    assert_difference('Salesforce::CustomObject_c.count', -1) do
      delete :destroy, :id => salesforce_custom_object_cs(:one).to_param
    end

    assert_redirected_to salesforce_custom_object_cs_path
  end
end
