class Item 

    
    attr_accessor :real_price, :name
    
    @@discount = 0.1

    def self.discount
        if Time.now.month == 4
            return @@discount += 0.2
        else
            return @@discount
        end
    end

    def initialize(options = {})
        @real_price = options[:real_price]
        @weight = options[:weight] 
        @name = options[:name]
    end
 
    def info
        yield(price)
        yield(name)
    end

    def price_with_discount
        (@real_price - @real_price*self.class.discount) + tax
    end
    
    def to_s
        "#{self.name}:#{self.real_price}:#{self.weight}"
    end

    private

        def tax
            type_tax = if self.class == VirtualItem
                1
            else
                2
            end
            cost_tax = if @real_price > 5
                @real_price*0.2
            else
                @real_price*0.1
            end
            return cost_tax + type_tax
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


