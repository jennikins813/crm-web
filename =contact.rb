class Contact
	@@customer = 1000

	attr_accessor :id, :first_name, :last_name, :email, :notes 

	def initialize(first_name,last_name,email,notes)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@notes = notes
	end

	def to_s 	
		"ID: #{@id}\nFirst Name: #{@first_name}\nLast Name: #{@last_name}\nEmail: #{@email}\nNotes: #{@notes}"
	end 		

	def self.get_id
		@@customer += 1
		@@customer
	end

end