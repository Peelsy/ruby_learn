class Item 

    def self.discount
        if Time.now.month == 4
            0.3
        else
            0.1
        end
    end

    def initialize(options = {})
        @price = options[:price]
        # @weight = options[:weight] /// only for class RealItem
        @name = options[:name]
    end

    attr_accessor :price, :name

    def info
        yield(price)
        yield(name)
    end

    def price
        @price - @price*self.class.discount
    end

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


