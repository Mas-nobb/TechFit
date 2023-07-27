class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @lessons = @course.lessons
  end


  def update
    @course = Course.find(params[:id])

    # 編集前の内容を取得
    name_before_edit = @course.name
    description_before_edit = @course.description

    if @course.update(course_params)
      redirect_to @course, notice: "Course was successfully updated."
    else
      # 編集内容が空の場合は編集前の内容を反映
      @course.name = name_before_edit if @course.name.blank?
      @course.description = description_before_edit if @course.description.blank?

      render :edit
    end
  end

  private

  def course_params
    params.require(:course).permit(:name, :description)
  end
end
