class Dept < ActiveRecord::Base
  belongs_to :college
  has_many :courses
end
