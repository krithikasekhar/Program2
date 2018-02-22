class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.integer :application_id, primary: true , null: false
      t.timestamps
    end
  end
end
