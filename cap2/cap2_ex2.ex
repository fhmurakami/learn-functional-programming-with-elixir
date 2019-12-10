defmodule Exercise2  do
  def travel_data(distance, time) do
    avg_velocity = distance / time

    IO.puts "Distance: #{distance}km \n" <>
            "Time: #{time} hours \n" <>
            "Average velocity: #{avg_velocity} km/h"
  end
end
