class StudentsController < ApplicationController

    def index
       render json: Student.all

    end

    def grades
        grades = Student.order(grade: :desc)
        render json: grades

    end

    def highest_grade
        grades = Student.order(grade: :desc)
        render json: grades.first

    end
end
