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
  shop[:pets].each do |type|
    if type[:breed] == breed
    pets_array << type[:name]
    end
  end
  p pets_array
end
# def pets_by_breed(shop, breed)
#   pet_group = []
#   for pet in shop
#     if shop[1][:breed] == breed
#       pet_group << shop[1][:name]
#     end
#   end
#   return pet_group
# end
# #
# pets_by_breed(@pet_shop, "British Shorthair")
#
# def find_pet_by_name(shop, name)
#   if shop[:name] == name
#     return name
#   end
# end
