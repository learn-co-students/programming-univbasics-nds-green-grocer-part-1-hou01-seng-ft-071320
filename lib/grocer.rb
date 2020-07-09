require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  #binding.pry
  hash_info = nil
  collection.each do |index|
    index.each do |key, value|
      if value == name
        hash_info = index
      end
    end
  end
  hash_info
  #binding.pry
end

unconsolidated_cart = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}
]

def consolidate_cart(cart)
  cart_with_count = cart.each_with_object([]) do |index,cart_array|
    index[:count] = 1
    cart_array << index
  end
  full_cart = cart_with_count.each_with_object([]) do |index2,final_cart|
    if !final_cart.include?(index2)
      final_cart << index2
    else
      index2[:count] += 1
    end
  end
  full_cart
end
