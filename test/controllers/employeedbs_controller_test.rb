require "test_helper"

class EmployeedbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employeedb = employeedbs(:one)
  end

  test "should get index" do
    get employeedbs_url
    assert_response :success
  end

  test "should get new" do
    get new_employeedb_url
    assert_response :success
  end

  test "should create employeedb" do
    assert_difference("Employeedb.count") do
      post employeedbs_url, params: { employeedb: { department: @employeedb.department, email: @employeedb.email, employee_idn: @employeedb.employee_idn, first_name: @employeedb.first_name, last_name: @employeedb.last_name, phone: @employeedb.phone } }
    end

    assert_redirected_to employeedb_url(Employeedb.last)
  end

  test "should show employeedb" do
    get employeedb_url(@employeedb)
    assert_response :success
  end

  test "should get edit" do
    get edit_employeedb_url(@employeedb)
    assert_response :success
  end

  test "should update employeedb" do
    patch employeedb_url(@employeedb), params: { employeedb: { department: @employeedb.department, email: @employeedb.email, employee_idn: @employeedb.employee_idn, first_name: @employeedb.first_name, last_name: @employeedb.last_name, phone: @employeedb.phone } }
    assert_redirected_to employeedb_url(@employeedb)
  end

  test "should destroy employeedb" do
    assert_difference("Employeedb.count", -1) do
      delete employeedb_url(@employeedb)
    end

    assert_redirected_to employeedbs_url
  end
end
