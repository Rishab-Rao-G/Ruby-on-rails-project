require "application_system_test_case"

class EmployeedbsTest < ApplicationSystemTestCase
  setup do
    @employeedb = employeedbs(:one)
  end

  test "visiting the index" do
    visit employeedbs_url
    assert_selector "h1", text: "Employeedbs"
  end

  test "should create employeedb" do
    visit employeedbs_url
    click_on "New employeedb"

    fill_in "Department", with: @employeedb.department
    fill_in "Email", with: @employeedb.email
    fill_in "Employee idn", with: @employeedb.employee_idn
    fill_in "First name", with: @employeedb.first_name
    fill_in "Last name", with: @employeedb.last_name
    fill_in "Phone", with: @employeedb.phone
    click_on "Create Employeedb"

    assert_text "Employeedb was successfully created"
    click_on "Back"
  end

  test "should update Employeedb" do
    visit employeedb_url(@employeedb)
    click_on "Edit this employeedb", match: :first

    fill_in "Department", with: @employeedb.department
    fill_in "Email", with: @employeedb.email
    fill_in "Employee idn", with: @employeedb.employee_idn
    fill_in "First name", with: @employeedb.first_name
    fill_in "Last name", with: @employeedb.last_name
    fill_in "Phone", with: @employeedb.phone
    click_on "Update Employeedb"

    assert_text "Employeedb was successfully updated"
    click_on "Back"
  end

  test "should destroy Employeedb" do
    visit employeedb_url(@employeedb)
    click_on "Destroy this employeedb", match: :first

    assert_text "Employeedb was successfully destroyed"
  end
end
