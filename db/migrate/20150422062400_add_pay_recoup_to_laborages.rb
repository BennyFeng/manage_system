class AddPayRecoupToLaborages < ActiveRecord::Migration
  def change
    add_column :laborages, :pay_recoup, :integer
  end
end
