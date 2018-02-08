########################################################
# Step 1 => Establish the layers

  # Write a list of the layers here

    # 1. layer containing a collection of rides
    # 2. layer containing detailed information about one ride

########################################################
# Step 2 => Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have

    # 1. layer containing a collection of rides: array of hashes
    # 2. layer containing detailed information about one ride: hash

########################################################
# Step 3 => Make the data structure!

    # Setup the data structure and manually write in data presented in rides.csv

ride_info = [
  {
    "driver_id" => "DR0004",
    "date" => "3rd Feb 2016",
    "cost" => 5,
    "rider_id" => "RD0022",
    "rating" => 5
  },
  {
    "driver_id" => "DR0001",
    "date" => "3rd Feb 2016",
    "cost" => 10,
    "rider_id" => "RD0003",
    "rating" => 3
  },
  {
    "driver_id" => "DR0002",
    "date" => "3rd Feb 2016",
    "cost" => 25,
    "rider_id" => "RD0073",
    "rating" => 5
  },
  {
    "driver_id" => "DR0001",
    "date" => "3rd Feb 2016",
    "cost" => 30,
    "rider_id" => "RD0015",
    "rating" => 4
  },
  {
    "driver_id" => "DR0003",
    "date" => "4th Feb 2016",
    "cost" => 5,
    "rider_id" => "RD0066",
    "rating" => 5
  },
  {
    "driver_id" => "DR0004",
    "date" => "4th Feb 2016",
    "cost" => 10,
    "rider_id" => "RD0022",
    "rating" => 4
  },
  {
    "driver_id" => "DR0002",
    "date" => "4th Feb 2016",
    "cost" => 15,
    "rider_id" => "RD0013",
    "rating" => 1
  },
  {
    "driver_id" => "DR0003",
    "date" => "5th Feb 2016",
    "cost" => 50,
    "rider_id" => "RD0003",
    "rating" => 2
  },
  {
    "driver_id" => "DR0002",
    "date" => "5th Feb 2016",
    "cost" => 35,
    "rider_id" => "RD0066",
    "rating" => 3
  },
  {
    "driver_id" => "DR0004",
    "date" => "5th Feb 2016",
    "cost" => 20,
    "rider_id" => "RD0073",
    "rating" => 5
  },
  {
    "driver_id" => "DR0001",
    "date" => "5th Feb 2016",
    "cost" => 45,
    "rider_id" => "RD0003",
    "rating" => 2
  }
]

########################################################
# Step 4 => Total Drivers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made

# Collect all driver_id without duplicates
driver_summary = {}
ride_info.each { |entry|
  unless driver_summary.keys.include?(entry["driver_id"])
    driver_summary[entry["driver_id"]] = {
      "total_rides" => 0,
      "total_earnings" => 0,
      "average_rating" => 0
    }
  end
}

# Calculate and save each driver's total rides, total earnings and average rating
ride_info.each { |entry|
  current_driver_id = entry["driver_id"]
  current_driver_total_rating = driver_summary[current_driver_id]["average_rating"] * driver_summary[current_driver_id]["total_rides"]
  driver_summary[current_driver_id]["total_rides"] += 1
  driver_summary[current_driver_id]["total_earnings"] += entry["cost"]
  driver_summary[current_driver_id]["average_rating"] = (current_driver_total_rating + entry["rating"]) / driver_summary[current_driver_id]["total_rides"]
}

# Print summary of calculation
driver_summary.each { |key, value|
  puts "#{key}:"
  puts "total rides: #{value["total_rides"]}"
  puts "total earnings: #{value["total_earnings"]}"
  puts "average rating: #{value["average_rating"]}"
}
