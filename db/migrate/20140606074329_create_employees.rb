class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :employee_email
      t.string :employee_phone
      t.string :employee_zipcode
      t.string :employee_first_name
      t.string :employee_last_name
      t.references :user, index: true
      t.string :employee_bages
      t.text :employee_description
      t.integer :employee_experience_years
      t.integer :employee_experience_months
      t.string :employee_lic_number
      t.string :employee_type
      t.float :employee_rating
      t.boolean :employee_punctuality
      t.boolean :employee_dependability
      t.boolean :employee_reliable_transportation
      t.boolean :employee_accurate_calendar
      t.boolean :employee_transportation
      t.string :employee_school
      t.string :employee_languages
      t.string :employee_qualifications
      t.string :employee_credentials
      t.string :employee_experience
      t.boolean :employee_phone_verified
      t.boolean :employee_email_verified
      t.boolean :employee_lic_verified

      t.timestamps
    end
  end
end
