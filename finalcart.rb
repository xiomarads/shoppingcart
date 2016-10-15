require 'date'

class ShoppingCart
  def initialize
    @items = [ ]
  end
  
  def add_item (item)
  	@items.push(item)
  end
  
  def checkout
  		@items.each do |item|
  			puts "#{item.name}: #{item.price}"
  			
  		end
  	total= 0 
	@items.each do |item|
			total += item.price
	end
		if @items.count >= 5  
      		total = (total * 0.9)
      	end
      	puts "Your total today is:  #{total}, have a nice day!"
end
end

class Item 
	attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
 end

class Houseware < Item
	def price
	if price >= 100 
	price_of_houseware = (@price * 0.95)
  else 
  	price_of_houseware <= 100 
  		price_of_houseware = @price 
  	end
  	price_of_houseware
  end
end


class Fruit < Item
  def price
     today = Date.today
	if today.saturday? || today.sunday? 
  	 price_of_fruit = (@price * 0.9)
  	else 
  		price_of_fruit = @price
  	end 
		price_of_fruit 
	end
end

banana = Fruit.new("Banana", 10)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.checkout



# There's a special storewide discount we still have to add. If there are more than 5 items in the cart, the user gets 10% off. Where should we apply this discount?