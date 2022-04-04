class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all
        by_grade = students.sort_by { |student| -student.grade }
        render json: by_grade
    end

    def highest_grade
        students = Student.all
        highest_grade_student = students.sort_by(&:grade).last
        render json: highest_grade_student
    end
end
