def ask(question, kind="string")
	puts question+" "

	answer=gets.chomp

	if kind=="number"
		answer=answer.to_i
	end
	return answer
end


def add_contact()
	contact={"name"=>"" ,"age"=>nil ,"phone_numbers"=>[]}
	contact["name"]=ask("name of person?")

	contact["age"]=ask("age of person?","number")

	answer=""
	answer=ask("want to add person's phone number? (y/n)")

	while answer!="n"
		num=ask("add number","number")
		contact["phone_numbers"].push(num)
		answer=ask("add more contact numbers? (y/n)")
	end
	return contact
end

contact_list=[]

ans=""
ans=ask("want to add person's details? (y/n)")
while ans!="n"
	details=add_contact()
	contact_list.push(details)
	ans=ask("want to add more people's details? (y/n)")
end

#contact={"name"=>"" , "phone_numbers"=>[]}
puts contact_list.inspect

puts "---"

contact_list.each do |contact|
	puts "Name is: #{contact["name"]}"

	if contact["phone_numbers"].size>0
		contact["phone_numbers"].each do |phone_number|
			puts "Phone Number: #{phone_number}"
		end
	end
end
