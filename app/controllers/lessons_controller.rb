class LessonsController < ApplicationController
  before_action :set_course

  def show
    @lesson = @course.lessons.find(params[:id])
  end

  def create
    @lesson = Lesson.new(lesson_params)

    if @lesson.save
      redirect_to @lesson, notice: 'Lesson was successfully created.'
    else
      render :new
    end
  end

  def update
    @lesson = Lesson.find(params[:id])

    if @lesson.update(lesson_params)
      # 編集内容が空の場合は何もしない
      flash[:notice] = "Lesson updated successfully!"
      redirect_to @lesson
    else
      render 'edit'
    end
  end

  private

  def lesson_params
    params.require(:lesson).permit(:title, :description, :category, :course_id)
  end

  def set_course
    @course = Course.find(params[:course_id])
  end
end
