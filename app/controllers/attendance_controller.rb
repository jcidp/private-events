class AttendanceController < ApplicationController
  before_action :authenticate_user!

  def create
    @event = Event.find(params[:event_id])
    if @event.attendees << current_user
      flash[:success] = "Great! You registered successfully"
    else
      flash[:error] = "Oh no! You couldn't register :("
    end
    redirect_to @event
  end

  def destroy
    @event = Event.find(params[:event_id])
    if @event.attendees.delete(current_user)
      flash[:success] = "You unregistered successfully"
    else
      flash[:error] = "Oh no! You couldn't unregister :("
    end
    redirect_to @event
  end 
end
