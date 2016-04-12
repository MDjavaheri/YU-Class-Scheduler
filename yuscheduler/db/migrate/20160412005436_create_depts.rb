class CreateDepts < ActiveRecord::Migration
  def change
    create_table :depts do |t|
      t.string :name
      t.references :courses, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
