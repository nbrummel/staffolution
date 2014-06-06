class CreateEducationClasses < ActiveRecord::Migration
  def change
    create_table :education_classes do |t|
      t.string :class_name
      t.string :class_type
      t.text :class_keywords
      t.date :class_date_start
      t.date :class_date_end
      t.time :class_time_start
      t.time :class_time_end
      t.integer :class_worth
      t.references :reps, index: true
      t.string :class_category
      t.string :class_url

      t.timestamps
    end
  end
end
