class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end
	def create
		@contact = Contact.new(contact_params)

		if @contact.save
			name = params['contact']['name']
			email = params[:contact][:email]
			body = params[:contact][:comments]

			flash[:success] = 'Success.'

			redirect_to root_path
		else
			flash[:danger] = 'Error occured, be sure you filled out all the important information.'
			render 'new'
		end
	end
	def home
	end
	private
		def contact_params
			#strong parameters
			params.require(:contact).permit(:name, :email, :comments)
		end
end





