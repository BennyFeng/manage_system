class CreateBasics < ActiveRecord::Migration
  def change
    create_table :basics do |t|
      t.string :emp_number
      t.string :emo_name
      t.string :emp_sex
      t.datetime :emp_birth
      t.string :emp_card
      t.string :emp_phone
      t.string :emp_address

      t.timestamps null: false
    end
  end
end
