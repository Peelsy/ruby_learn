require_relative "cart"
require_relative "Items"

cart = Cart.new

cart.add_item(Item.new)

p cart.items