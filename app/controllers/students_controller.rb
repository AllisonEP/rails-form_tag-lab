class StudentsController < ApplicationController

  def create
    @student= Student.create(first_name: params[:student][:first_name],last_name: params[:student][:last_name])
    redirect_to students_path
  end 
  
  def new 
    @student = Student.new
  end 

  def index
    @students = Student.all
    
  end

  def show
    @student = Student.find(params[:id])
  end

end
