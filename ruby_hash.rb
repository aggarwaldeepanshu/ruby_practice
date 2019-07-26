list={}

list={"name" => "bread"}

list[1]="new_item_number"

puts list

puts list["name"]


list.delete(1)

puts list

list["total"]=100

puts list

puts list.keys


list.store("shape","circle")

puts list


hash = { "name" => "Bread", "quantity" => 1, "calories" => 100 }
if hash.has_key?("calories") == true
  hash["food"]=true
end

puts hash


puts "hash shift:"

puts hash.shift.inspect

puts "hash"

puts hash.inspect


puts "merging operation"

hash=hash.merge({"name"=>"bread"})

puts "new hash"

puts hash.inspect