require 'bcrypt'
class User < ActiveRecord::Base
def user_params
    params.require(:user).permit(:username, :password_digest, :password, :password_confirmation)
  end
has_secure_password

  validates :username, presence: true
	validates :password, length: { in: 4..8 }
	validates :password_confirmation, length: { in: 4..8 }

#	def your_questions(params)
#		questions.paginate(page: params[:page], order: 'created_at DESC', per_page: 3)
#	end
end
