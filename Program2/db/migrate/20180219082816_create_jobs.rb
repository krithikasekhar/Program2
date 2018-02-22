class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.integer :job_id , primary: true
      t.timestamps
    end
  end
end
