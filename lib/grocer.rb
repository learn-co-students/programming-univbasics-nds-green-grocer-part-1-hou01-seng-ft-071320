require 'pry'
def find_item_by_name_in_collection(name, collection)
  item = nil
  collection.each do |k|
    if k[:item] == name
      item = k
end
  end
  item
  #binding.pry
end

def consolidate_cart(cart)
  c_cart = []
  
  cart.each do |k|
    f_item = find_item_by_name_in_collection(k[:item], c_cart)
    if f_item
      c_cart_index = 0
      c_cart.each do |c_cart_item|
        if c_cart_item[:item] === f_item[:item]
          binding.pry
          c_cart_item[:count] += 1
        end
        c_cart_index += 1
      end
    else
      k[:count] = 1
      c_cart << k
      #binding.pry
    end
  end
  c_cart
  #binding.pry
end
  