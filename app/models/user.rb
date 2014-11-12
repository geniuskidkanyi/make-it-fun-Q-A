class User < ActiveRecord::Base
    attr_accesssible  :username, :password, :password_confirmation
    has_secure_password

    validates :username, presence: true, uniqueness: {case_sensitive: false}, length: {in: 3..15}
    validates :password, lenght: {in: 4..15}
    validates :password_confirmation, lenght: {in: 4..15}
end
