class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end

    def show
        @course = Course.find(params[:id])
    end

    def new
    end

    def create
        @course = Course.new(course_params)

        @course.save
        redirect_to @course
    end

    private
    def course_params
        params.require(:course).permit(:subject, :number, :credits, :prerequisites, :corequisites)
    end

end
