class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :select
      t.integer :crn
      t.string :subj
      t.string :crse
      t.integer :sec
      t.integer :cmp
      t.integer :cred
      t.string :title
      t.string :days
      t.string :time
      t.intger :cap
      t.integer :act
      t.integer :rem
      t.string :instructor
      t.string :date
      t.string :location
      t.string :attribute

      t.timestamps null: false
    end
  end
end
