require 'test_helper'

class Salesforce::CustomObjectsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salesforce_custom_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custom_object" do
    assert_difference('Salesforce::CustomObject.count') do
      post :create, :custom_object => { }
    end

    assert_redirected_to custom_object_path(assigns(:custom_object))
  end

  test "should show custom_object" do
    get :show, :id => salesforce_custom_objects(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => salesforce_custom_objects(:one).to_param
    assert_response :success
  end

  test "should update custom_object" do
    put :update, :id => salesforce_custom_objects(:one).to_param, :custom_object => { }
    assert_redirected_to custom_object_path(assigns(:custom_object))
  end

  test "should destroy custom_object" do
    assert_difference('Salesforce::CustomObject.count', -1) do
      delete :destroy, :id => salesforce_custom_objects(:one).to_param
    end

    assert_redirected_to salesforce_custom_objects_path
  end
end
