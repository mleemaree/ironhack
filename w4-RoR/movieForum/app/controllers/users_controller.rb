class UsersController < ApplicationController
	# renders the home page
	  def home
		  @name = current_user ? @current_user.username : "Movie Critic"
 	  end

	  def index
	    @users = User.all
	  end

	  # renders the signup form
	  def new
	  end

	  def show
	  end

	  # receives form and creates a user from that data
	  def create
	    user = User.new(user_params)
	    if user.save
	      session[:user_id] = user.id
	      redirect_to '/'
	    else
	      redirect_to '/signup'
	    end
	  end   

	  private

	  def user_params
	     params.require(:user)
	     .permit(:username, :email, :password, :password_confirmation)
	  end
end
