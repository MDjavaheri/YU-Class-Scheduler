class Dept < ActiveRecord::Base
  belongs_to :college
  has_many :course
  
  def new
    @dept = Dept.new(params[:name])
    @dept.courses.create(params[:courses])
  end
end
