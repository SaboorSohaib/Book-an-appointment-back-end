class User < ApplicationRecord
has_many :appointments, class_name: 'Appointment', foreign_key: 'user_id'
validates :name, :email, :password, presence: true, length: { minimum: 3, maximum: 50 }
end
