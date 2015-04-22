class AddEmpNameToLaborages < ActiveRecord::Migration
  def change
    add_column :laborages, :emp_name, :string
  end
end
