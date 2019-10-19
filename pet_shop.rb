def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, cash)
  shop[:admin][:total_cash] += cash
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, num_of_pets)
  shop[:admin][:pets_sold] += num_of_pets
end

def stock_count(shop)
  return shop[:pets].count
end

def pets_by_breed(shop, breed)
  pets_array = []
  shop[:pets].each do |pet|
    if pet[:breed] == breed
    pets_array << pet[:name]
    end
  end
  p pets_array
end

def find_pet_by_name(shop, name)
  shop[:pets].each do |pet|
    if pet[:name] == name
      return pet
    end
  end
end

# def remove_pet_by_name(shop, name)
#   shop[:pets].each do |pet|
#     if pet[:name] == name
#       pet[:name].delete
#     end
#   end
# end

def add_pet_to_stock(shop, new_pet)
  shop[:pets] << new_pet
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, cash)
  customer[:cash] -= cash
end

def customer_pet_count(customer)
  customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end
