DISHES_CALORIES = { # esto es una constante que contiene un hash con los nombres de los platos y sus respectivas calorías.
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Veggie Burger" => 540,
  "Vegan Burger" => 350,
  "Sweet Potatoes" => 230,
  "Salad" => 15,
  "Iced Tea" => 70,
  "Lemonade" => 90
}

MEALS = { # esto es una constante que contiene un hash con los nombres de los combos y los platos que los componen.
  "Cheesy Combo" => ["Cheese Burger", "Sweet Potatoes", "Lemonade"],
  "Veggie Combo" => ["Veggie Burger", "Sweet Potatoes", "Iced Tea"],
  "Vegan Combo" => ["Vegan Burger", "Salad", "Lemonade"]
}

def poor_calories_counter(burger, side, beverage) # esto es una función que recibe el nombre de un plato principal, un acompañamiento y una bebida y retorna la suma de las calorías de los tres platos.
  DISHES_CALORIES[burger] + DISHES_CALORIES[side] + DISHES_CALORIES[beverage] # se retorna la suma de las calorías de los tres platos.
end

def calories_counter(orders) # esto es una función que recibe un array con los nombres de los platos y combos que se pidieron y retorna la suma de las calorías de los platos y combos que se pidieron.
  total = 0 # se inicializa la variable total en 0.
  orders.each do |order| # se itera sobre el array orders. En cada iteración, se guarda el nombre del plato o combo en la variable order.
    if DISHES_CALORIES.key?(order) # si el hash DISHES_CALORIES contiene la clave order, es decir, si order es el nombre de un plato, se suma el valor asociado a la clave order en el hash DISHES_CALORIES a la variable total.
      total += DISHES_CALORIES[order] # se suma el valor asociado a la clave order en el hash DISHES_CALORIES a la variable total.
    else
      total += poor_calories_counter(MEALS[order][0], MEALS[order][1], MEALS[order][2]) #
    end
  end
  return total # se retorna la variable total.
end
