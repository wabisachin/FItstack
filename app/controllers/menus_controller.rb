class MenusController < ApplicationController
    def new
        @user = User.find(params[:user_id])
        @menu = Menu.new
    end
    
    def create
        menu = Menu.create(params_menu)
        redirect_to top_user_trainings_path(current_user)
    end
    
    private
    def params_menu
        params.require(:menu).permit(:user_id, :name)
    end
end
