class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update]

  def new
    @question = Question.new
    @surveys = Survey.all
    @response_types = Response.subclasses.map{|x| x.name}
  end

  def index
    @questions = Question.all

  end

  def show

  end

  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @surveys = Survey.all
    @response_types = Response.subclasses.map{|x| x.name}
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:survey_id, :content, :order, :suborder, :response_type)
    end

end
