class SchoolClassesController < ApplicationController
  before_action :set_id, only: [:show, :edit, :update]
  
  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.create(form_details)
    redirect_to school_class_path(@schoolclass)
  end

  def show
    # binding.pry
  end

  def edit

  end

  def update
    # binding.pry
    @schoolclass.update(form_details)
    redirect_to school_class_path(@schoolclass)
  end

  private
  def set_id
    @schoolclass = SchoolClass.find(params[:id])
  end

  def form_details
    params.require(:school_class).permit(:title,:room_number)
  end
end
