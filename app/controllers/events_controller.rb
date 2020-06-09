class EventsController < ApplicationController 
	def new;	end

	def index
		@events = Event.all
	end

	def create
		
	end

	def show
		
	end
end