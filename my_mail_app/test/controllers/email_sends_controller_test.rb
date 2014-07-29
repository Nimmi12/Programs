require 'test_helper'

class EmailSendsControllerTest < ActionController::TestCase
  setup do
    @email_send = email_sends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:email_sends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create email_send" do
    assert_difference('EmailSend.count') do
      post :create, email_send: { message: @email_send.message, subject: @email_send.subject, to: @email_send.to }
    end

    assert_redirected_to email_send_path(assigns(:email_send))
  end

  test "should show email_send" do
    get :show, id: @email_send
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @email_send
    assert_response :success
  end

  test "should update email_send" do
    patch :update, id: @email_send, email_send: { message: @email_send.message, subject: @email_send.subject, to: @email_send.to }
    assert_redirected_to email_send_path(assigns(:email_send))
  end

  test "should destroy email_send" do
    assert_difference('EmailSend.count', -1) do
      delete :destroy, id: @email_send
    end

    assert_redirected_to email_sends_path
  end
end
