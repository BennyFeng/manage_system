class AddPassWordToBasics < ActiveRecord::Migration
  def change
    add_column :basics, :password, :string
  end
end
