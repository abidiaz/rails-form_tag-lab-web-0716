class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new

  end

  def create
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to students_path
    # student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    # redirect_to student_path(@student)
  end
  

end


#      Prefix Verb URI Pattern             Controller#Action
#    students GET  /students(.:format)     students#index
#             POST /students(.:format)     students#create
# new_student GET  /students/new(.:format) students#new
#     student GET  /student/:id(.:format)  students#show