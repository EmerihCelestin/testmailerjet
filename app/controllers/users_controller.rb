class UsersController < ApplicationController
  include UsersHelper
  before_action :authenticate_user!
  before_action :profil, only: [:destroy]
  
  def index
  end

  def show
     @user = current_user
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def profil
      @user = User.find(params[:id])
      unless current_user == @user
        redirect_to events_path
      end
    end 

end
