class Investor < ApplicationRecord
    # has_secure_password
    has_many :stocks
    has_many :sectors, through: :stocks
end
