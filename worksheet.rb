########################################################
# Step 1: Establish the layers

  # Write a list of the layers here


  # Trips
  #   Drivers
  #     Rides
  #      Data



########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have

  # Trips  ---> hash
  #   Drivers  ---> array
  #     Rides ---> hash
  #       Data ---> key: value
  #
  #
  # Trips { Drivers [ rides { data } ] }

########################################################
# Step 3: Make the data structure!

# Setup the data structure and manually write in data presented in rides.csv

trips = {
  DR0001:
  [
    {
      rider: "RD0003",
      date: "3rd Feb 2016",
      cost: 10,
      rating: 3,
    },
    {
      rider: "RD0015",
      date: "3rd Feb 2016",
      cost: 30,
      rating: 4,
    },
    {
      rider: "RD0003",
      date: "5th Feb 2016",
      cost: 45,
      rating: 2,
    }
  ],
  DR0002:
  [
    {
      rider: "RD0073",
      date: "3rd Feb 2016",
      cost: 25,
      rating: 5,
    },
    {
      rider: "RD0013",
      date: "4th Feb 2016",
      cost: 15,
      rating: 1,
    },
    {
      rider: "RD0066",
      date: "4th Feb 2016",
      cost: 35,
      rating: 3,
    },
  ],
  DR0003:
  [
    {
      rider: "RD0066",
      date: "4th Feb 2016",
      cost: 5,
      rating: 5,
    },
    {
      rider: "RD0003",
      date: "5th Feb 2016",
      cost: 50,
      rating: 2,
    }
  ],
  DR0004:
  [
    {
      rider: "RD0022",
      date: "3rd Feb 2016",
      cost: 5,
      rating: 5,
    },
    {
      rider: "RD0022",
      date: "4th Feb 2016",
      cost: 10,
      rating: 4,
    },
    {
      rider: "RD0073",
      date: "5th Feb 2016",
      cost: 20,
      rating: 5,
    }
  ]
}

########################################################
# Step 4: Total Drivers Earnings and Number of Rides

# Use an iteration block to print driver's total rides and money made

puts "\n"
puts "Welcome to this ride sharing service's history!"
puts "\n"

trips.each do |driver, rides|
  puts "Driver #{driver}:"
  puts "  Total rides: #{rides.length}"

  total = 0.00
  rides.each do |price|
    total += price[:cost]
  end

  puts "  Total earnings: $#{total.round(2)}"
  puts "\n"
end


puts "\n"
