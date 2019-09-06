class Cart 

    attr_reader :items

    include ItemContainer
    
    def initialize
        @items = Array.new  
    end

    

    # def add_item(item)
    #     @items.push item
    # end
    # def remove_item
    #     @items.pop
    # end

    # def validate
    #     @items.each { |i| puts "No price for this item" if i.real_price.nil?  }
    # end

    # def delete_invalid_items
    #     @items.delete_if { |i| i.real_price.nil?}    
    # end

end