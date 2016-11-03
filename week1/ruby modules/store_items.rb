module StoreItems

  def welcome_message # This is a generic message that will print for any class object.
    puts "Welcome to our store. Everything here is organic and made fresh."
  end

  def goodbye_message
    puts "Thank you for shopping at our store and using Apple Pay. Did you know we offer free home delivery within 2 hours of each order placed?"
  end

  def info # This method would require these exact variables for any class to work.
      puts "This is a #{@name}. It is a #{@type} and costs $#{@price}."
    end

end

