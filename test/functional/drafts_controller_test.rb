require 'test_helper'

class DraftsControllerTest < ActionController::TestCase
  setup do
    @draft = drafts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drafts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create draft" do
    assert_difference('Draft.count') do
      post :create, :draft => { :date => @draft.date, :draft => @draft.draft }
    end

    assert_redirected_to draft_path(assigns(:draft))
  end

  test "should show draft" do
    get :show, :id => @draft
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @draft
    assert_response :success
  end

  test "should update draft" do
    put :update, :id => @draft, :draft => { :date => @draft.date, :draft => @draft.draft }
    assert_redirected_to draft_path(assigns(:draft))
  end

  test "should destroy draft" do
    assert_difference('Draft.count', -1) do
      delete :destroy, :id => @draft
    end

    assert_redirected_to drafts_path
  end
end
