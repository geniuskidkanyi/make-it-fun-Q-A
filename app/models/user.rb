class User < ActiveRecord::Base

    validates :username, presence: true, uniqueness: {case_sensitive: false}, length: {in: 3..15}
    validates :password, length: {in: 4..15}
    validates :password_confirmation, length: {in: 4..15}
end
