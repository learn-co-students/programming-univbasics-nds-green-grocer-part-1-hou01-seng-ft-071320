def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  found_item = {}
  collection.each do |hash1|
    if name == hash1[:item]
      found_item = hash1
    end
  end
  if found_item == {}
    return nil
  end
  return found_item
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  consolidated_cart = cart.uniq
  consolidated_cart.each do |hash1|
    hash1[:count] = 0
  end  
  consolidated_cart.each do |hash2|
    cart.each do |hash3|
      if hash2[:item] == hash3[:item]
        hash2[:count] += 1
      end  
    end  
  end
  return consolidated_cart
end

grocery_shelf = [
  { :item => "CANNED BEANS", :price => 3.00, :clearance => true },
  { :item => "CANNED CORN", :price => 2.50, :clearance => false },
  { :item => "SALSA", :price => 1.50, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false },
  { :item => "HOT SAUCE", :price => 1.75, :clearance => false }
]

unconsolidated_cart = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}
]

#find_item_by_name_in_collection("CANNED BEANS",grocery_shelf)
#consolidate_cart(unconsolidated_cart)