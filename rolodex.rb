require_relative "contact.rb"

class Rolodex
		@@id = 1000

	def initialize
		@contacts = []
	end


	def add_contact(first_name, last_name, email, note)
		contact = Contact.new(@@id, @first_name, @last_name, @email, @notes)
		@@id += 1		
		
		@contacts << contacts
	end

	def all
		@contacts
	end

end
