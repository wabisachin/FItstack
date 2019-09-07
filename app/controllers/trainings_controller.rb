class TrainingsController < ApplicationController
    def show
        @trainings = Training.all
        @user = User.find(params[:user_id])
    end
    
    def new
        @user = User.find(params[:user_id])
        @training = Training.new
    end
    
    def create
        training = Training.create(params_training)
        # binding.pry
        redirect_to new_user_training_path(current_user.id)
    end
    
    private
    def params_training
        params.require(:training).permit(:name,:user_id,:category_id,:weight, :times)
    end
end

