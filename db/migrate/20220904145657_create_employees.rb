class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.integer :employee_idn
      t.string :first_name
      t.string :last_name
      t.string :department
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
