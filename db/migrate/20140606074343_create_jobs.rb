class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :user, index: true
      t.references :employee, index: true
      t.string :job_position
      t.text :job_description
      t.date :job_start_date
      t.date :job_end_date
      t.float :job_compensation
      t.time :job_start_time
      t.time :job_end_time
      t.boolean :job_filled
      t.string :job_title
      t.references :employer, index: true

      t.timestamps
    end
  end
end
