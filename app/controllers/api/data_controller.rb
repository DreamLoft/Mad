class Api::DataController < ApplicationController
      skip_before_action :verify_authenticity_token ,only: [:index, :show, :new, :edit, :create, :update , :destroy]
      def index
            @projects= Project.all
            @tasks= Task.all
            @timesheets= Timesheet.all
            @users= User.all
            @projections= Projection.all
            @data=MyClass.new
            @data.set_project(@projects)
            @data.set_task(@tasks)
            @data.set_timesheet(@timesheets)
            @data.set_user(@users)
            @data.set_projection(@projections)
            render json: @data
      end
      def show
        
      end
end
class MyClass
def set_project(a)
      @projects= a
end
def set_task(a)
      @tasks= a
end
def set_timesheet(a)
      @timesheets= a
end
def set_user(a)
      @users= a
end
def set_projection(a)
      @projections= a
end
end
