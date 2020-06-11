class EventsController < ApplicationController 
	def new;	end

	def index
		@events = Event.all.order(created_at: :DESC)
	end

	def create

		event = current_user.events.build(event_params)

		if event.save 
			flash[:success] = "Event created successfully!"
			redirect_to event_path(event)
		else
			flash[:danger] = "Event didn't created!"
			render 'new'
		end
	end

	def show
	  @event = Event.find_by(id: params[:id])
	end

	protected

	def event_params
		params.require(:event).permit(:title, :date, :description)
	end

end