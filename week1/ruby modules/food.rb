require_relative 'store_items'

module YumYums

  class Food

    include StoreItems

    attr_reader :name, :price, :type, :shelf_life

    def initialize (input_info)
      @name = input_info[:name]
      @price = input_info[:price]
      @type = input_info[:type]
      @shelf_life = input_info[:shelf_life]
    end 

    def info # This method would require these exact variables for any class to work.
      super
      puts "The shelf life is #{shelf_life}."
    end

  end

end