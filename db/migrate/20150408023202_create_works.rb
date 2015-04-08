class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.integer :number
      t.integer :emp_number
      t.integer :emp_holiday
      t.date :emp_private_date
      t.integer :emp_private_money
      t.integer :emp_lateleave
      t.date :emp_lateleave
      t.integer :emp_lateleave_money
			t.references :basic, index:true

      t.timestamps null: false
    end
  end
end
