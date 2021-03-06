class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:success] = 'Event added successfully.'
      redirect_to event_path(@event)
    else
      flash[:alert] = @event.errors.full_messages.join(". \n")
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:name, :date, :time, :location, :description)
  end
end
