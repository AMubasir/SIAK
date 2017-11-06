require 'test_helper'

class LecturersControllerTest < ActionController::TestCase
  setup do
    @lecturer = lecturers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lecturers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lecturer" do
    assert_difference('Lecturer.count') do
      post :create, lecturer: { address: @lecturer.address, date_of_birth: @lecturer.date_of_birth, full_name: @lecturer.full_name, gender: @lecturer.gender, lecturer_number: @lecturer.lecturer_number, phone: @lecturer.phone, place_of_birth: @lecturer.place_of_birth, religion: @lecturer.religion }
    end

    assert_redirected_to lecturer_path(assigns(:lecturer))
  end

  test "should show lecturer" do
    get :show, id: @lecturer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lecturer
    assert_response :success
  end

  test "should update lecturer" do
    patch :update, id: @lecturer, lecturer: { address: @lecturer.address, date_of_birth: @lecturer.date_of_birth, full_name: @lecturer.full_name, gender: @lecturer.gender, lecturer_number: @lecturer.lecturer_number, phone: @lecturer.phone, place_of_birth: @lecturer.place_of_birth, religion: @lecturer.religion }
    assert_redirected_to lecturer_path(assigns(:lecturer))
  end

  test "should destroy lecturer" do
    assert_difference('Lecturer.count', -1) do
      delete :destroy, id: @lecturer
    end

    assert_redirected_to lecturers_path
  end
end
