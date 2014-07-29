require 'test_helper'

class StudMarksControllerTest < ActionController::TestCase
  setup do
    @stud_mark = stud_marks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stud_marks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stud_mark" do
    assert_difference('StudMark.count') do
      post :create, stud_mark: { mark: @stud_mark.mark, student_id: @stud_mark.student_id, subject_id: @stud_mark.subject_id }
    end

    assert_redirected_to stud_mark_path(assigns(:stud_mark))
  end

  test "should show stud_mark" do
    get :show, id: @stud_mark
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stud_mark
    assert_response :success
  end

  test "should update stud_mark" do
    patch :update, id: @stud_mark, stud_mark: { mark: @stud_mark.mark, student_id: @stud_mark.student_id, subject_id: @stud_mark.subject_id }
    assert_redirected_to stud_mark_path(assigns(:stud_mark))
  end

  test "should destroy stud_mark" do
    assert_difference('StudMark.count', -1) do
      delete :destroy, id: @stud_mark
    end

    assert_redirected_to stud_marks_path
  end
end
