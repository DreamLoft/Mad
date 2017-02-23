class Api::ProjectsController < Api::ApplicationController
      before_action :authenticate_user!
        #skip_before_action :verify_authenticity_token
      def index
            @projects = Project.all
            render json: @projects
      end

        def create
          @project = Project.new(project_params)          
            if @project.save
                  render json: @project , status: :created, location: @project
                  Pusher.trigger('project_channel', 'add_event', @project )
            else
                  render nothing: true, status: :bad_request
            end
          
        end

          def update
          @project = Project.find(params[:id])

            if @project.update(project_params)
                  render json: @project , status: :ok, location: @project
                 Pusher.trigger('project_channel', 'update_event', @project )
            else
             render json: @project.errors, status: :unprocessable_entity
            end
        end
      private
      def project_params
        params.require(:project).permit(:jobid, :projectname,:clientname ,:startdate,:projectstatus, :user_id, :sbu, :project_lead, :project_manager, :close_remarks, :end_date)
      end
end
