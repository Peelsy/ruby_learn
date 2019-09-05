require_relative "cart"
require_relative "Items"
require_relative "real"
require_relative "virtual"

item1 = VirtualItem.new({:price => 10, :weight => 100, :name => "car"})
item2 = RealItem.new({ :weight => 100, :name => "car"})


# item.info{ |attr| puts attr}
puts Item.discount

cart = Cart.new

cart.add_item(item1)
cart.add_item(item2)

p cart.items

cart.delete_invalid_items

puts Item.discount

p cart.items

p item1.respond_to?(:weight)
p item2.respond_to?(:weight)

puts item1.price