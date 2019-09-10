class Cart 

    include ItemContainer
    attr_reader :items

    
    def initialize(owner)
        @items = Array.new  
        @owner = owner
    end

    def save_to_file    
        File.open("#{@owner}_cart.txt", "w") do |f|
            @items.each {  |i| f.puts "#{i.name}:#{i.real_price}:#{i.weight}" }           
        end
    end

    def read_from_file
        return unless File.exists?("#{@owner}_cart.txt")
        item_fields = File.readlines("#{@owner}_cart.txt")
        item_fields.map! { |i| i.chomp }
        item_fields.map! { |i| i.split(":") }
        item_fields.each { |i| @items << Item.new(name: i[0], price: i[1].to_i, weight: i[2].to_i) }
        @items.uniq!
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