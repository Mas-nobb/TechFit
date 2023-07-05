class QuizzesController < ApplicationController
  def index
    @questions = Quiz.all
  end
end
