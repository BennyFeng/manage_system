class CreateLaborages < ActiveRecord::Migration
  def change
    create_table :laborages do |t|
      t.string :pay_month
      t.string :emp_number
      t.integer :pay_basic
      t.integer :pay_prize
      t.integer :pay_overtime
      t.integer :pay_payable
      t.integer :pay_paymoney
			t.references :basic, index: true

      t.timestamps null: false
    end
  end
end
