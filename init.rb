require_relative "string"
require_relative "item_container"
require_relative "Items"
require_relative "real"
require_relative "virtual"
require_relative "order"

require_relative "cart"

@items = []
@items << VirtualItem.new({:real_price => 106, :name => "car"})
@items << RealItem.new({ :real_price => 105, :weight => 100, :name => "kettle"})
@items << RealItem.new({ :real_price => 105, :weight => 100, :name => "computer"})


# item.info{ |attr| puts attr}
# puts Item.discount

# cart = Cart.new

# cart.add_item(item1)
# cart.add_item(item2)

# puts cart.items.size

# cart.delete_invalid_items

# # puts Item.discount

# p cart.items

# # p item1.respond_to?(:weight)
# # p item2.respond_to?(:weight)

# # puts item1.price_with_discount
# # puts item1.real_price

# order = Order.new
# order.add_item(item1)
# order.add_item(item2)
# order.add_item(item3)
# order.remove_item

# puts order.items.size

# puts order.count_valid_items