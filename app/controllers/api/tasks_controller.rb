class Api::TasksController < Api::ApplicationController
      before_action :authenticate_user!
        #skip_before_action :verify_authenticity_token ,only: [:index, :show, :new, :edit, :create, :update , :destroy]
        def index
             @tasks = Task.all
             render json: @tasks
        end

 end
