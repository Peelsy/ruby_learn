module ItemContainer  
    
    module ClassMethods
    
        def min_price
            100
        end
    end

    module InstanceMethods

        def add_item(item)
            unless item.real_price < self.class.min_price
                @items.push item
            end
        end
        def remove_item
            @items.pop
        end

        def validate
            @items.each { |i| puts "No price for this item" if i.real_price.nil?  }
        end

        def delete_invalid_items
            @items.delete_if { |i| i.real_price.nil?}    
        end


        def count_valid_items
            @items.count { |i| i.real_price }
        end
    end

    def self.included(base)
        base.extend ClassMethods
        base.class_eval do
            include InstanceMethods
        end
    end
end