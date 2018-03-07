require 'test_helper'

class JobApplicationFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_application_form = job_application_forms(:one)
  end

  test "should get index" do
    get job_application_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_job_application_form_url
    assert_response :success
  end

  test "should create job_application_form" do
    assert_difference('JobApplicationForm.count') do
      post job_application_forms_url, params: { job_application_form: { description: @job_application_form.description, title: @job_application_form.title } }
    end

    assert_redirected_to job_application_form_url(JobApplicationForm.last)
  end

  test "should show job_application_form" do
    get job_application_form_url(@job_application_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_application_form_url(@job_application_form)
    assert_response :success
  end

  test "should update job_application_form" do
    patch job_application_form_url(@job_application_form), params: { job_application_form: { description: @job_application_form.description, title: @job_application_form.title } }
    assert_redirected_to job_application_form_url(@job_application_form)
  end

  test "should destroy job_application_form" do
    assert_difference('JobApplicationForm.count', -1) do
      delete job_application_form_url(@job_application_form)
    end

    assert_redirected_to job_application_forms_url
  end
end
