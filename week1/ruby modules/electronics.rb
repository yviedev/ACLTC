require_relative 'store_items'

module YumYums

  class Electronics

    include StoreItems

    attr_reader :name, :price, :type

    def initialize (input_info)
      @name = input_info[:name]
      @price = input_info[:price]
      @type = input_info[:type]
      @insurance = input_info[:insurance]
    end 

    def has_insurance
      if @insurance == false
        puts "I'm sorry your #{@name} broke, but it does not appear that you have insurance to replace it."
      else
        puts "I see that you have insurance for your #{@name}. We will get that replace right away."
      end
    end

  end

end