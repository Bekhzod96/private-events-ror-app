class EventsController < ApplicationController 
	def new;	end

	def index
		@events = Event.all
	end

	def create

		event = current_user.events.build(event_params)

		if event.save 
			flash[:notice] = "Event created successfully!"
			redirect_to event_path(current_user)
		else
			render 'new'
		end
	end

	def show
		
	end

	protected

	def event_params
		params.require(:event).permit(:title, :date, :description)
	end

end