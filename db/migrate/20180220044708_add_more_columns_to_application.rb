class AddMoreColumnsToApplication < ActiveRecord::Migration[5.1]
  def change
    change_table :applications do |t|
      t.references :users
      t.string :current_company
      t.string :linkedin_url
      t.string :portfolio_url
      t.text :additional_info
      t.string :gender
      t.string :race
      t.string :veteran_status
      t.string :disability_status
      t.string :resume
      t.string :status
    end
  end
end
