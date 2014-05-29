class Home < ActiveRecord::Base

	def image_file=(input_data) 
	
name = input_data.original_filename  

  
directory = "public/data"
path = File.join(directory, name)
File.open(path, "wb") { |f| f.write(input_data.read) }

   self.filename = input_data.original_filename 
    self.content_type = input_data.content_type.chomp 
    self.binary_data = input_data.read 
 
end
end
