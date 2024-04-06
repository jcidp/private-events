class AttendanceController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    if @event.attendees << current_user
      flash[:success] = "Great! You registered successfully"
    else
      flash[:error] = "Oh no! You couldn't register :("
    end
    redirect_to @event
  end
end
