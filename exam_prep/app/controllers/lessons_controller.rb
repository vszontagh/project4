class LessonsController < ApplicationController

  #before_action :authenticate

  def index
    if current_user.id
      @user = User.find(current_user.id)
      @lesson = Lesson.where({category_id: params[:category_id]})
      @category = Category.all
    else
      redirect_to users_path
    end
  end

  def new
    @lesson = Lesson.new

  end

  def create
    @lesson = Lesson.new(lesson_params)

  end

  def show
    @lesson = Lesson.find(params[:id])

  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(lesson_params)
    #redirect_to 
  end

  def destroy

  end

  private
  def lesson_params
    params.require(:lesson).permit(:content, :category_id)
  end


end
