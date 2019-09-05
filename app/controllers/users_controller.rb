class UsersController < ApplicationController
    
    def show
        @user = User.find(current_user.id)
    end
    
    def edit
        @user = User.find(params[:id])
    end
    
    def update
        user = User.find(params[:id])
        user.update(params_user)
        redirect_to user_path(user)
    end
    
    # ActiveStorageのストロングパラメータで:imageを追加すること
    private
    def params_user
        params.require(:user).permit(:name,:image,:email)
    end
end
