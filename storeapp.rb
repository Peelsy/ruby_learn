class StoreApp
    class << self

        def new
            unless @instance
                puts "loading files.."
                puts self.class

                require_relative "string"
                require_relative "item_container"
                require_relative "Items"
                require_relative "real"
                require_relative "antique"
                require_relative "virtual"
                require_relative "order"
                require_relative "cart"
            end
            @instance ||= self
        end
    end



end