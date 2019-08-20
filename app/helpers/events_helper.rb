module EventsHelper
	def event
		Event.find(params[:id])
	end	
end
