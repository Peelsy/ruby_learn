module ItemContainer  
    
    module ClassMethods
    
        def min_price
            100
        end
    end

    module InstanceMethods

        def method_missing(method_name)
            if method_name =~  /^all_/
                show_all_items_with_name(method_name.to_s.sub(/^all_/, '').chomp('s'))
            else
                super
            end
        end

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

    private 

    def show_all_items_with_name(n)
        @items.map { |i| i if n == i.name}
            delete_invalid_items { |i| i.nil? } 
            end
    end
    

    def self.included(base)
        base.extend ClassMethods
        base.class_eval do
            include InstanceMethods
        end
    end
end