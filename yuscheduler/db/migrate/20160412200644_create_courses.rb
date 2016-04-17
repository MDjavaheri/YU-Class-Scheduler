class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses, id: false do |t|
      t.primary_key :crn
      t.decimal :credits
      t.string :crse
      t.string :prof
      t.string :title
      t.string :day1
      t.time :time1s
      t.time :time1f
      t.string :day2
      t.time :time2s
      t.time :time2f
      t.boolean :select
      t.integer :section
      t.integer :cap
      t.integer :act
      t.integer :rem

      t.timestamps null: false
    end
  end
end
