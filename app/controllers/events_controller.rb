class EventsController < ApplicationController
  def index
      @events = Event.all  
  end

  def show
    @events = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(events_params)
    if @event.save
      redirect_to events_path
    else
      render "new",status: :unprocessable_entity
    end
  end 

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(events_params)
      redirect_to events_path
    else
      render "edit",status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path, notice: "Event succesfully deleted!"
  end

  private
  def events_params
    params.require(:event).permit(:title, :content, :location, :start_date, :end_date)
  end
end