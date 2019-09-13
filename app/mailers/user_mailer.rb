class UserMailer < ApplicationMailer
	def def welcome_email(user)

		@user = user
     courrier(
       to: @user.email,
       subject: 'Bienvenue chez nous !'
       delivery_method_options: { api_key: '4c8bfa3f5d6084ce7fc18797098b439f' , secret_key: '1065521ae50c6f6a8ca6efd5d1ceeecf' }
    )
  end
 end
end
