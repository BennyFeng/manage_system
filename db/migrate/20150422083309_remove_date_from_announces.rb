class RemoveDateFromAnnounces < ActiveRecord::Migration
  def change
    remove_column :announces, :date, :datetime
  end
end
