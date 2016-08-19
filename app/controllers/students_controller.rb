class StudentsController < ApplicationController
  before_action :set_id, only: [:show, :edit, :update]
  
  def new
    @student = Student.new
  end

  def create
    # binding.pry
    @student = Student.create(form_details)
    redirect_to student_path(@student)
  end

  def show

  end

  def edit
    
  end

  def update
    @student.update(form_details)
    redirect_to student_path(@student)
  end

  private
  def set_id
    @student = Student.find(params[:id])
  end

  def form_details
    params.require(:student).permit(:first_name,:last_name)
  end
end
