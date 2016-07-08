class ContactsController < ApplicationController
	def new
		render 'new'
	end

	def create
		@contact = Contact.new(
			:name => params[:contact][:name],
			:address => params[:contact][:address],
			:phone_number => params[:contact][:phone_number],
			:email_address => params[:contact][:email_address])

		email =~ /^\w+@\w+\.[A-Za-z]+$/

		if (contact.email_address =~ email)!=nil&&
			(phone_number=~/\d/)!=nil
			@contact.save
			redirect_to("/contacts")
		else
			redirect_to('/contacts/new')
		end		
		

	end

	def index
		@contacts_arr = Contact.order(name: "asc")

		render 'index'
	end

	def show
		@contact = Contact.find(params[:id])
		render 'show'
		
	end
end

 