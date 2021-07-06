require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  item = nil
  collection.each do |i|
    i.each do |key, value|
      if value == name
        item = i
      end
    end
  end
  item
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = []
  item_count = cart.each_with_object(Hash.new(0)) { |h1, h2| h2[h1[:item]] += 1 }
  cart.each do |i|
    i.each do |key, value|
      if find_item_by_name_in_collection(value, new_cart) == nil
        new_cart.push(i)
      end
    end
    item_count.each do |item, number|
      if i[:item] == item
        i[:count] = number
      end
    end
  end
  new_cart
end


  