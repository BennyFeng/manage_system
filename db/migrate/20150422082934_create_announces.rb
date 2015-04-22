class CreateAnnounces < ActiveRecord::Migration
  def change
    create_table :announces do |t|
      t.string :tittle
      t.text :post
      t.string :author
      t.datetime :date

      t.timestamps null: false
    end
  end
end
