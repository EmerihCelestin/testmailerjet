class UsersController < ApplicationController
  include UsersHelper
  before_action :authenticate_user!
  before_action :profil, only: [:show]
  
  def index
  end

  def show
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
      unless current_user == user
        redirect_to events_path
      end
    end 

end
