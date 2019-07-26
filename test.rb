class Name
	attr_reader  :title, :first_name, :last_name

	attr_writer :first_name
	def initialize(title,first_name,last_name)
		@title=title
		@first_name=first_name
		@last_name=last_name
	end

	#def title()
	#	@title
	#end

    #def first_name()
    #	@first_name
    #end
  
    #def last_name()
    #	@last_name
    #end

    #def first_name=(value)
    #	@first_name=value
    #end


    def full_name()
    	@title + " " + @first_name.capitalize + " " + @last_name.capitalize
    end
end

name=Name.new("Mr.","deepanshu","aggarwal")
#puts name.title + " " + name.first_name.capitalize + " " + name.last_name.capitalize

puts name.full_name

puts "Add first name to update"

temp=gets.chomp

name.first_name=temp

puts "updated name is"

#puts name.title + " " + name.first_name.capitalize + " " + name.last_name.capitalize

puts name.full_name