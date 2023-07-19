class LessonsController < ApplicationController
  before_action :set_course

  def show
    @lesson = @course.lessons.find(params[:id])
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end
end
