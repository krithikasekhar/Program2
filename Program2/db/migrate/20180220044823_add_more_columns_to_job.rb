class AddMoreColumnsToJob < ActiveRecord::Migration[5.1]
  def change
    change_table :jobs do |t|
      t.references :companies , null: false
      t.text :job_description , null: false
      t.string :empoyment_type
      t.text :responsibilities
      t.text :requirements
    end
  end
end
