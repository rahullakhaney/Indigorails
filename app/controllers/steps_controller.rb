class StepsController < ApplicationController
  def show
  	course = Course.find(params[:course_id])
  	@steps = course.steps
  	@step = @steps.find(params[:id])
  end
end
