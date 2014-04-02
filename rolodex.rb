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

	def delete_contact(id)		
		@contacts.delete_if {|c| c.id == id}
	end

	def show_specific_contact(id)
		@contacts.each do |contact|
			if contact.id == id
			puts contact
			end
		end
	end

	def display_byattribute_name			#display contacts by attribute
		@contacts.each do |contact|
			puts contact.last_name + "," +contact.first_name
		end
	end

	def display_byattribute_email			
		@contacts.each do |contact|
			puts contact.email
		end
	end

	def edit_first_name(id, first_name)
		@contacts.each do |contact|
			if contact.id == id
				contact.first_name = first_name
			end
		end
	end

	def edit_last_name(id, last_name)
		@contacts.each do |contact|
			if contact.id == id
				contact.last_name = last_name
			end
		end
	end

	def edit_email(id, email)	
		@contacts.each do |contact|
			if contact.id == id
				contact.email = email
			end
		end
	end

	def edit_notes(id, notes)
		@contacts.each do |contact|
			if contact.id == id
				contact.notes = notes
			end
		end
	end
end