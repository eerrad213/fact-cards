class User < ActiveRecord::Base
	has_secure_password

	def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end

	validates_uniqueness_of :email
end
