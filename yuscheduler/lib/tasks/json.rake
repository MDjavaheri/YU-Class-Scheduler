namespace :tasks do
  desc "TODO"
  
  task :import_users do
    File.open('~/workspace/yuscheduler/yc_classes.json', 'r') do |file|
      data = JSON.parse file
      data.each do |dept|
        create_table :courses do |t|
          t.integer :crn
          t.decimal :credits
          t.string :crse
          t.string :day1
          t.string :start_1
          t.string :finish_1
          t.string :day2
          t.string :start_2
          t.string :finish_2
          t.string :prof
          t.string :title
        end
        dept.each do |course|
          new_course = Course.new(JSON.parse(course))
          new_course.save
        end
      end
    end
  end

end
