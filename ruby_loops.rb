num=Random.new.rand(5)

puts "Enter e to exit"

loop do
	answer=gets.chomp

	if answer=='e'
			break
	end

	if answer.to_i == num
			puts "answer match!!"

else
	puts "not a match"
	puts "try again!!"
end
end



answer=0

until answer > 5 do
	puts answer
	answer+=1
end


list=%w(item1 item2 item3 1 2 3 4 5)

puts "items in list are"

list.each do |item|
	puts "the current item is #{item}"
end

hash = { "name" => "Bread", "quantity" => 1, "calories" => 100 }

hash.each do |key,value|
	puts "key value is #{key} and value is #{value}"
end

hash.each_key do |key|
	puts "key is #{key}"
end

hash.each_value do |value|
	puts "value is #{value}"
end

# looping using times

=begin n.times do

end
=end

puts "using for loop now"

for item in 0..4 do
	puts item
end

puts "for loop on array \"list\" "

for item in list do
	puts "the current item is: #{item}"
end