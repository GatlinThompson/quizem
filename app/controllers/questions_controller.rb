class QuestionsController < ApplicationController
  before_action :set_question, only: %i[ show edit update destroy ]

  # GET /questions or /questions.json
  def index
    @questions = Question.order(:bank)
  end

  # GET /questions/1 or /questions/1.json
  def show
  end

  # GET /questions/new
  def new
    @question = Question.new
    build_multiple_choice(4)
    build_multiple_answers(4)
    @question.build_true_false
  end

  # GET /questions/1/edit
  def edit
    @question.new_bank = nil
  end

  # POST /questions or /questions.json
  def create
    @question = Question.new(question_params)

      if params[:question][:new_bank].present?
        @question.bank = params[:question][:new_bank]
      end

      @question.bank =  @question.bank.downcase


    respond_to do |format|
      if @question.save
        format.html { redirect_to questions_url, notice: "Question was successfully created." }
        format.json { render :index, status: :created, location: @question }
      else

        unless @question.multiple_choice? then
          build_multiple_choice(4)
        end

        unless @question.multiple_answers? then
          build_multiple_answers(4)
        end
           
        @question.build_true_false
         
         format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1 or /questions/1.json
  def update

    if params[:question][:new_bank].present?
        params[:question][:bank] = params[:question][:new_bank]
    end
    
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to questions_url, notice: "Question was successfully updated." }
        format.json { render :index, status: :ok, location: @question }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1 or /questions/1.json
  def destroy
    @question.destroy

    respond_to do |format|
      format.html { redirect_to questions_url, notice: "Question was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  #GET searches questions by bank
  def search_by
    @questions = if !params[:search_by_bank].blank? && !params[:search_by_question_type].blank?
      Question.where(bank: params[:search_by_bank], question_type: params[:search_by_question_type])
    elsif !params[:search_by_bank].blank? && params[:search_by_question_type].blank?
         Question.where(bank: params[:search_by_bank])
    elsif params[:search_by_bank].blank? && !params[:search_by_question_type].blank?
         Question.where(question_type: params[:search_by_question_type])
    else
      Question.all
    end
    render 'index'

    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def question_params
      params.require(:question).permit(:id, :title, :question_type, :bank, :new_bank,
        multiple_choices_attributes: [:id, :option, :is_correct, :_destroy], 
        true_false_attributes: [:id, :correct_answer],
        multiple_answers_attributes: [:id, :option, :is_correct, :_destroy],
        bank_attributes: [:bank] )
    end

    def build_multiple_choice(num)
      num.times { @question.multiple_choices.build }
    end

    def build_multiple_answers(num)
      num.times { @question.multiple_answers.build }
    end

end
