module UsersHelper
	def user
		User.find(params[:id])
	end
end
