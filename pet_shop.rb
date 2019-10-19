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
    for pet in shop[:pets]
      if pet[:breed] == breed
        pets_array << pet[:name]
      end
    end
    p pets_array
end

def find_pet_by_name(shop, pet_name)
  found_pet = nil
  for pet in shop[:pets]
    if pet[:name] == pet_name
      found_pet = pet
    end
  end
  return found_pet
end

def remove_pet_by_name(shop, name)
  for pet in shop[:pets]
    if pet[:name] == name
      pet.clear # does work, but leaves behind an empty array?
    end
  end
end

def add_pet_to_stock(shop, pet)
  shop[:pets] << pet
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

def add_pet_to_customer(customer, pet)
  customer[:pets] << pet
end

def customer_can_afford_pet(customer, pet)
  if customer[:cash] >= pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(shop, pet, customer)

  if customer_can_afford_pet(customer, pet) == true

      cash = pet[:price]
      remove_customer_cash(customer, cash)

        add_or_remove_cash(shop, cash)

          add_pet_to_customer(customer, pet)

          name = pet[:name]
            remove_pet_by_name(shop, name)

            num_of_pets = 1
              increase_pets_sold(shop, num_of_pets)
  end

end
