class TrainingController < ApplicationController
    
    def new
        @user = User.find(params[:user_id])
        @training = Training.new
    end
    
    def create
    end
end
