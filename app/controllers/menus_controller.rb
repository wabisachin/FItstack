class MenusController < ApplicationController
    def new
        @user = User.find(params[:user_id])
        @trainings = @user.trainings
        @menu = Menu.new
        # jsファイル内でtrainingsデータを使用するための変数
        gon.trainings = @trainings
    end
    
    def create
        # binding.pry
        menu = Menu.create(params_menu)
        redirect_to top_user_trainings_path(current_user)
    end
    
    private
    def params_menu
        params.require(:menu).permit(:user_id, :name, training_menus_attributes: [:training_id, :weight, :times])
    end
end
