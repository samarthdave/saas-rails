class Contact < ActiveRecord::Base
	validates :name, length: {minimum: 3}
	validates :email, length: {minimum: 5}
end
