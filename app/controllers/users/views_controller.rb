class Users::ViewsController < Devise::RegistrationsController
     
     before_action :authenticate_user!

    def index
        
        @users = User.all
    end

    def new_user
       # u = User.find(current_user.id)
        @rols = Rol.all
    end
    
    def edit_user
      
       @user = User.find(params[:id])
       @rols = Rol.all
        

    end

    
    def create_user
      
        @user = User.create(email:params[:email],password:params[:password],password_confirmation:params[:password_confirmation], names: params[:names],last_names:params[:last_names],document: params[:document], rol_id: params[:rol_id])
        if @user.save
           
            redirect_to users_index_path
  end
    end

      def update_user
       @user = User.find(params[:id])
       if   @user.update(email:params[:email],password:params[:password],password_confirmation:params[:password_confirmation], names: params[:names],last_names:params[:last_names],document: params[:document], rol_id:params[:rol_id])

           
            redirect_to users_index_path
  end 
    end

    def delete_user
  @user = User.find(params[:id])
  if @user.destroy
           
            redirect_to users_index_path
  end
  
     
end

end	