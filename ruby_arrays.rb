#list=Array.new

#list=["item 1", "item2" , "str" , 2, 3, 4]

item="milk"

list=%w(item1 item2 item3 1 2 3 4 5)

list1=%W(#{item} item1 item2 item3 1 2 3 4 5)

print list
print "\n"
print list1

list << 100
# or list.push(100)

print "\n"
print list

list=[20,21] + list

print "\n"
print list
print "\n"
puts list.length

list.push("item1")

puts list.count("item1")


two_items=list.slice(0,2)

puts two_items