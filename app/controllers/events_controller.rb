class EventsController < ApplicationController
  include EventsHelper
  before_action :authenticate_user!, only: [:new,:create]
  def index
    @event = Event.all
  end

  def show
  end

  def new
  end

  def create
    @event = Event.new(start_date:params[:start_date].to_datetime, duration:params[:duration], title:params[:title], description:params[:description], price:params[:price], location:params[:location], admin:current_user)
    
    if @event.save 
      flash[:success] = "Ton event a été ajouté dans la liste!"
      redirect_to events_path(@event)
    else
      render 'new'
    end 

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
