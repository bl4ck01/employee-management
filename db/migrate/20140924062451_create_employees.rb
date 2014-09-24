class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :emp_id
      t.string :location
      t.date :date_of_joining
      t.date :date_of_birth
      t.text :address
      t.text :skills
      t.references :user, index: true

      t.timestamps
    end
  end
end
