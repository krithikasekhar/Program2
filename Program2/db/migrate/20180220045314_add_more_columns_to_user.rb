class AddMoreColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.string :email_id , primary: true, unique: true, null:false
      t.string :password , null:false
      t.string :phone
      t.references :companies
      t.boolean :recruiter
      t.boolean :jobseeker
    end
  end
end
