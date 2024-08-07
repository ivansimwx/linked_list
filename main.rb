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

puts list.to_s
puts list.size
puts list.at(3)
list.pop
puts list.to_s
