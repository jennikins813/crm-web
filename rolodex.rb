class Rolodex
	attr_reader :contacts

	def initialize
		@contacts = []		#empty array to accept new contacts
		@id = 1000
	end

	def create_contact(contact)	
		contact.id = @id
		@contacts << contact 	#pushes the new contact into the array
		@id += 1
	end

	def display_contacts		
		@contacts.each do |contact|
			puts contact
		end
	end

	def find(contact_id)
		@contacts.find do |contact|
			contact.id == contact_id
		end
	end

	def delete_contact(contact)		
		@contacts.delete(contact)
	end
end