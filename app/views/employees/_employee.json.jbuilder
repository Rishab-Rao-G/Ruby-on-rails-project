json.extract! employee, :id, :employee_idn, :first_name, :last_name, :department, :email, :phone, :created_at, :updated_at
json.url employee_url(employee, format: :json)
