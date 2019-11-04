
class Cart 

    include ItemContainer
    attr_reader :items
    
    class ItemNotSupported < StandardError; end

    
    def initialize(owner)
        @items = Array.new  
        @owner = owner
    end

    def save_to_file    
        File.open("#{@owner}_cart.txt", "w") do |f|
            @items.each do |i|
                raise ItemNotSupported if i.class == VirtualItem
                f.puts i
            end
        end
    end

    def read_from_file
        # return unless File.exists?("#{@owner}_cart.txt")
        File.readlines("#{@owner}_cart.txt").each { |i| @items << i.to_real_item }        
        @items.uniq!            
    rescue Errno::ENOENT
        File.open("#{@owner}_cart.txt", "w")
        puts "file #{@owner}_cart.txt created"         
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