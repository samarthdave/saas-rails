class Plan < ActiveRecord::Base
	has_many :users
	validates :name, length: { minimum: 1, maximum: 50 }
	validates :price, presence: true
end