require_relative 'food'
require_relative 'electronics'
require_relative 'store_items'

module YumYums

  p food = YumYums::Food.new(name:"apple", price: 5, type: "fruit", shelf_life: "5 days")
  p food = YumYums::Food.new(name:"ramen noodles", price: 1, type: "not real food", shelf_life: "forever")

  food.info 
  food.welcome_message
  food.goodbye_message

  p gadget = YumYums::Electronics.new(name:"55 inch 4k tv", price: 5000, type: "consumer goods", insurance: false)
  p gadget1 = YumYums::Electronics.new(name:"Apple TV", price: 99, type: "consumer goods", insurance: true)

  gadget.welcome_message
  gadget.goodbye_message
  gadget.info
  gadget.has_insurance
  gadget1.has_insurance

end