class User < ApplicationRecord
    has_secure_password # bcrypt param
end
