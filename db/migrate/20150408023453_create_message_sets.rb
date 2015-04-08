class CreateMessageSets < ActiveRecord::Migration
  def change
    create_table :message_sets do |t|
      t.integer :private
      t.integer :sick
      t.integer :late

      t.timestamps null: false
    end
  end
end
