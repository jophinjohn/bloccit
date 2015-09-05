class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end    

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def edit
     @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(params.require(:question).permit(:title, :body))
    if @question.save
      flash[:notice] = "Question was saved."
      redirect_to @question
    else
      flash[:error] = "Please save question again."      
      render :new
    end
  end
  
  def update
    @question=Question.find(params[:id])
    if @question.update_attributes(params.require(:question).permit(:title, :body, :resolved))
      flash[:notice]= "Question was updated."
      redirect_to @question
    else
      flash[:error]="Please save the question again."
      render :edit
    end
  end  
end

