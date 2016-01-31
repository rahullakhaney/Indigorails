class StepsController < ApplicationController
  def show
  	course = Course.find(params[:course_id])
  	@steps = course.steps.order(:tag)
  	@step = @steps.find(params[:id])
  end
end
