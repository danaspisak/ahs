class InterviewsController < ApplicationController
    before_action :set_interview, only: [:show]

    def new
      @survey = Survey.find(params[:survey_id])
      @interview = Interview.new
      @interview.responses.build
      @questions = Question.where(survey_id: @survey.id)
    end

    def index
      @interviews = Interview.all

    end

    def show

    end

    def create
      @interview = Interview.new(interview_params)

      respond_to do |format|
        if @interview.save
          format.html { redirect_to @interview, notice: 'Interview was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_interview
        @interview = Interview.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def interview_params
        params.require(:interview).permit(:survey_id, responses_attributes: [:selection, :question_id])
      end

end
