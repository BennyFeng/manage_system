class AddLateleaveToWorks < ActiveRecord::Migration
  def change
    add_column :works, :lateleave, :integer
    add_column :works, :lateleave_date, :date
  end
end
