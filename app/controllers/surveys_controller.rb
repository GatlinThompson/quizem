class SurveysController < ApplicationController
    before_action :set_survey, only: %i[ show edit update destroy ]
  
    # GET /surveys or /surveys.json
    def index
      @surveys = Survey.all
    end
  
    # GET /surveys/1 or /surveys/1.json
    def show
      @survey_questions = SurveyQuestion.joins(:question).where(survey_id: params[:id])
    end
  
    # GET /surveys/new
    def new
      @survey = Survey.new(survey_questions: [SurveyQuestion.new])
      @questions = Question.all
    end
  
    # GET /surveys/1/edit
    def edit
    end
  
    # POST /surveys or /surveys.json
    def create
      @survey = Survey.new(survey_params)
      @questions = Question.all
      respond_to do |format|
        if @survey.save
          format.html { redirect_to survey_url(@survey), notice: "Survey was successfully created." }
          format.json { render :show, status: :created, location: @survey }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @survey.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /surveys/1 or /surveys/1.json
    def update
      respond_to do |format|
        if @survey.update(survey_params)
          format.html { redirect_to survey_url(@survey), notice: "Survey was successfully updated." }
          format.json { render :show, status: :ok, location: @survey }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @survey.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /surveys/1 or /surveys/1.json
    def destroy
      @survey.destroy
  
      respond_to do |format|
        format.html { redirect_to surveys_url, notice: "Survey was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_survey
        @questions = Question.all
        @survey = Survey.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def survey_params
        params.require(:survey).permit(:name, :survey_survey_question, survey_questions_attributes: [:id, :points, :survey_id, :question_id, :_destroy ])
      end
  end
  