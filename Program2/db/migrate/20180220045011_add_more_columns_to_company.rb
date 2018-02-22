class AddMoreColumnsToCompany < ActiveRecord::Migration[5.1]
  def change
    change_table :companies do |t|
      t.integer :company_id , primary: true, null: false
      t.string :website
      t.string :hq
      t.integer :size
      t.integer :founded
      t.string :industry
      t.integer :revenue
      t.text :synopsis
    end
  end
end
