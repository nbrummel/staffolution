class CreateReps < ActiveRecord::Migration
  def change
    create_table :reps do |t|
      t.string :rep_name
      t.string :rep_type
      t.text :rep_description
      t.references :user, index: true
      t.string :rep_email
      t.string :rep_phone
      t.string :rep_url

      t.timestamps
    end
  end
end
