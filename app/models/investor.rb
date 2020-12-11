class Investor < ApplicationRecord
    has_secure_password

    has_many :stocks
    has_many :sectors, through: :stocks

    validates :username, presence: true, uniqueness: true, :message => 'username is required'
    validates :name, presence: true, uniqueness: true, :message => 'name is required'
    validates :email, confirmation: true, uniqueness: true
    validates :email_confirmation, presence: true
    validates :funds, numericality: { only_integer: true, greater_than: 0 }, :message => 'funds must be greater than $0'
end
