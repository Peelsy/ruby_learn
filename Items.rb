class Item

    def initialize(options = {})
        @price = options[:price]
        @weight = options[:weight]
    end

    attr_accessor :price, :weight
    
    # def price
    #     @price               
    # end

    # def price=(price_value)
    #     @price = price_value
    # end

    # def weight
    #     @weight               
    # end

    # def weight=(weight_value)
    #     @price = weight_value
    # end
end

# puts item1.price = 20


