class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :employer_name
      t.string :employer_zipcode
      t.string :employer_phone
      t.string :employer_url
      t.string :employer_email
      t.references :user, index: true
      t.string :employer_street_number
      t.string :employer_street
      t.string :employer_unit_number
      t.string :employer_city
      t.string :employer_state
      t.text :employer_office_type

      t.timestamps
    end
  end
end
