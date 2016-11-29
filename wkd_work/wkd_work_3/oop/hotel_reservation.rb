# In this exercise, we've already implemented the class, and you have to write the driver code. This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:

# The ability to change a room number even after a reservation has already been created
p reservation = HotelReservation.new(customer_name: "Yvonne", date: "11/25/2016", room_number: 216)
p reservation.amenities << ["wifi", "cable", "sparkling water"].flatten
p reservation.room_number = "penthouse"

# The add_a_fridge method
p reservation.add_a_fridge
p reservation.amenities.flatten!

# The add_a_crib method
p reservation.add_a_crib

# The add_a_custom_amenity method
p reservation.add_a_custom_amenity("bubble bath")
