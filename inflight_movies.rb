require 'set'

def can_two_movies_fill_flight?(movies_times, flight_time)

movies_seen = Set.new

movies_times.any? do |first_movie|
  second_movie = flight_time - first_movie
  if movies_seen.include?(second_movie)
      true
    else
      movies_seen << first_movie
      false
  end
end
end


