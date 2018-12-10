# Implement a solution in Ruby to the traveling salesman problem using the nearest neighbor heuristic


distances = {
  City_A: {City_B: 3, City_C: 2, City_D: 6, City_E: 3},
  City_B: {City_A: 3, City_C: 1, City_D: 5, City_E: 7},
  City_C: {City_B: 1, City_A: 2, City_D: 4, City_E: 2},
  City_D: {City_A: 6, City_C: 4, City_B: 5, City_E: 8},
  City_E: {City_B: 7, City_C: 2, City_D: 8, City_A: 3}
}

all_cities = []
distances.each_key {|key| all_cities.push(key) }


def nearest_possible_neighbor(current_city, distances, visited) #distances["City_A"]

  neighbor_cities = distances[current_city].to_a # {City_B: 3, City_C: 10, City_D: 4, City_E: 5}
  nearest_neighbor = nil

  neighbor_cities.each do |current_neighbor, current_neighbor_distance|

    if visited.include?(current_neighbor) === false && (nearest_neighbor === nil || nearest_neighbor[1] > current_neighbor_distance) #Fix me??
      nearest_neighbor = [current_neighbor, current_neighbor_distance]
    end
  end
  if nearest_neighbor === nil
    return nil
  end
  return nearest_neighbor[0]
end


def traveling_salesman(starting_city, distances)
  visited = []
  current_city = starting_city

  while current_city != nil #Fix me?

    next_city = nearest_possible_neighbor(current_city, distances, visited)
    visited.push(current_city)
    current_city = next_city

  end
  return visited
end

puts traveling_salesman(:City_A, distances)
