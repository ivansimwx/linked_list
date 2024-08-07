require_relative "lib/linked_list"
require_relative "lib/node"

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')
list.prepend('tiger')
list.prepend('hare')

# check initial list creation
list.to_s

# check pop
list.pop
list.to_s

# check size, at, contains?, find
puts list.size
puts list.at(6).value
puts list.at(6).next_node
puts list.contains?("hamsters")
puts list.find("parrot")

# check insert
list.insert_at("fish", 10)
list.insert_at("fish", 5)
list.to_s
puts list.size

# check remove
list.remove_at(10)
list.remove_at(3)
list.to_s
puts list.size
