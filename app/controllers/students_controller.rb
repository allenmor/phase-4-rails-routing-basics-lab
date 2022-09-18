class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    def grades 
        grades = Student.all.sort { |a, b| b.grade <=> a.grade }
        render json: grades
    end
    def highest_grade
        grade = Student.all.max_by { |person| person.grade }
        render json: grade
    end
end
