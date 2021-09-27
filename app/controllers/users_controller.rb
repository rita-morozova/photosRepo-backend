class UsersController < ApplicationController
    
  def index 
    users = User.all 
    render json: users 
  end
  
  #Logged in user can see their profile
  def profile
    render json: {user: UserSerializer.new(current_user)}, status: :accepted
  end

  def create 
    @user=User.create(user_params)
      if @user.valid?
        #JWT sends the token here from Application Controller
        token=encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), token: token} 
      else
        render json: {error: @user.errors.full_messages}, status: :not_acceptable
      end 
  end 

  def login 
    @user =User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
       #JWT authentication here comes from Application Controller
      token=encode_token({user_id: @user.id})
      render json: {user: UserSerializer.new(@user), token: token, success: 'Welcome back!'} 
    else
      render json: {error: "Invalid Username or Password. Please Try Again."}, status: :unauthorized
    end 
  end 

  private 

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end 
end
