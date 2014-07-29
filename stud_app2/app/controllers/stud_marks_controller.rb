class StudMarksController < ApplicationController
  before_action :set_stud_mark, only: [:show, :edit, :update, :destroy]

  # GET /stud_marks
  # GET /stud_marks.json
  def index
    @stud_marks = StudMark.all
  end

  # GET /stud_marks/1
  # GET /stud_marks/1.json
  def show
  end

  # GET /stud_marks/new
  def new
    @stud_mark = StudMark.new
  end

  # GET /stud_marks/1/edit
  def edit
  end

  # POST /stud_marks
  # POST /stud_marks.json
  def create
    @stud_mark = StudMark.new(stud_mark_params)

    respond_to do |format|
      if @stud_mark.save
        format.html { redirect_to @stud_mark, notice: 'Stud mark was successfully created.' }
        format.json { render :show, status: :created, location: @stud_mark }
      else
        format.html { render :new }
        format.json { render json: @stud_mark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stud_marks/1
  # PATCH/PUT /stud_marks/1.json
  def update
    respond_to do |format|
      if @stud_mark.update(stud_mark_params)
        format.html { redirect_to @stud_mark, notice: 'Stud mark was successfully updated.' }
        format.json { render :show, status: :ok, location: @stud_mark }
      else
        format.html { render :edit }
        format.json { render json: @stud_mark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stud_marks/1
  # DELETE /stud_marks/1.json
  def destroy
    @stud_mark.destroy
    respond_to do |format|
      format.html { redirect_to stud_marks_url, notice: 'Stud mark was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stud_mark
      @stud_mark = StudMark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stud_mark_params
      params.require(:stud_mark).permit(:student_id, :subject_id, :mark)
    end
end
