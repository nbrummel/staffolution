class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :employee, index: true
      t.float :review_rating
      t.references :user, index: true
      t.text :review_description
      t.boolean :review_employee_recommendation
      t.references :employer, index: true

      t.timestamps
    end
  end
end
