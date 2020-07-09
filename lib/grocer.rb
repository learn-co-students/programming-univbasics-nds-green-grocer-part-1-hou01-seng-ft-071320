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

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  cart.each_with_object([]) do |index, final_array|
    if !final_array[index]
      final_array[index] = []
    end
  end
  final_array
  binding.pry
end
binding.pry
