class QuestionsController < ApplicationController
  def index
    if current_user.id
      @user = User.find(current_user.id)
      @question = Question.where({lesson_id: params[:lesson_id]})
      @category = Category.all
      @lesson = Lesson.all
      @answer = Answer.all
    else
      redirect_to users_path
    end
  end
end