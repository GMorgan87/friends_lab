def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  for item in person[:favourites][:snacks]
    if item == food
      return true
    end
  end
  return false
end

def add_friend(person, friend)
  person[:friends].push(friend)
end

def remove_friend(person, friend)
  for name in person[:friends]
    if name == friend
      person[:friends].delete(friend)
    end
  end
end

def total_money(people)
  total_money = 0
  for person in people
    total_money += person[:monies]
  end
  return total_money
end

def lend_money(lender, borrower, amount)
  lender[:monies] -= amount
  borrower[:monies] += amount
end

def get_foods(people)
  all_foods = []
  for person in people
    all_foods += person[:favourites][:snacks]
  end
  return all_foods
end
