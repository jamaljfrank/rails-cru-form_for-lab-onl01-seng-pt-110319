class ArtistsController < ApplicationController
  
  def show 
    @artist = Artist.find(params[:id])
  end
  
  def new 
    @artist = Artist.new 
  end
  
  def create
    @student = Student.new(student_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end
end
