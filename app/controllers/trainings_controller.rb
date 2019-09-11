class TrainingsController < ApplicationController
    def top
        @user = User.find(params[:user_id])
        @trainings = @user.trainings
    end
    
    def show
    end
    
    def new
        @user = User.find(params[:user_id])
        @training = Training.new
    end
    
    def create
        training = Training.create(params_training)
        # binding.pry
        redirect_to menu_user_trainings_path(current_user.id)
    end
    
    def edit
        @user = User.find(params[:user_id])
        @training = Training.find(params[:id])
    end
    
    def update
        training = Training.find(params[:id])
        training.update(params_training)
        
        redirect_to menu_user_trainings_path(current_user.id)
    end
    
    private
    def params_training
        params.require(:training).permit(:name,:user_id,:category_id,:weight,:times)
    end
end

