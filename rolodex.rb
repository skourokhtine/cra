class Rolodex
	
	def initialize
	@id = 1000
	@contacts = []
end

	def contacts
		@contacts = contact
	end

		def add_contact(contact)
			contact.id = @id
			@contacts << contacts
			@@id += 1
		end
	end
end