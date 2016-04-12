class Dept < ActiveRecord::Base
  has_many :courses
end
