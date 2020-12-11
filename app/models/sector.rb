class Sector < ApplicationRecord
    has_many :stocks
    has_many :investors, through: :stocks
end
