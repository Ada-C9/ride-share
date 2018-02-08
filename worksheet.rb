########################################################
# Step 1: Establish the layers
  # rides
    # driver_id
    # date
    # cost
    # rider_id
    # rating

########################################################
# Step 2: Assign a data structure to each layer

## from inside out
# array for rides
# inner hash for ride information

########################################################
# Step 3: Make the data structure!

rides = [
  {
    # DR0004,3rd Feb 2016,5,RD0022,5
    driver_id: "DR0004",
    date: "3rd Feb 2016",
    cost: 5,
    rider_id: "RD0022",
    rating: 5
  },
  {
    # DR0001,3rd Feb 2016,10,RD0003,3
    driver_id: "DR0001",
    date: "3rd Feb 2016",
    cost: 10,
    rider_id: "RD0003",
    rating: 3
  },
  {
    # DR0002,3rd Feb 2016,25,RD0073,5
    driver_id: "DR0002",
    date: "3rd Feb 2016",
    cost: 25,
    rider_id: "RD0073",
    rating: 5
  },
  {
    # DR0001,3rd Feb 2016,30,RD0015,4
    driver_id: "DR0001",
    date: "3rd Feb 2016",
    cost: 30,
    rider_id: "RD0015",
    rating: 4
  },
  {
    # DR0003,4th Feb 2016,5,RD0066,5
    driver_id: "DR0003",
    date: "4th Feb 2016",
    cost: 5,
    rider_id: "RD0066",
    rating: 5
  },
  {
    # DR0004,4th Feb 2016,10,RD0022,4
    driver_id: "DR0004",
    date: "4th Feb 2016",
    cost: 10,
    rider_id: "RD0022",
    rating: 4
  },
  {
    # DR0002,4th Feb 2016,15,RD0013,1
    driver_id: "DR0002",
    date: "4th Feb 2016",
    cost: 15,
    rider_id: "RD0013",
    rating: 1
  },
  {
    # DR0003,5th Feb 2016,50,RD0003,2
    driver_id: "DR0003",
    date: "5th Feb 2016",
    cost: 50,
    rider_id: "RD0003",
    rating: 2
  },
  {
    # DR0002,5th Feb 2016,35,RD0066,3
    driver_id: "DR0002",
    date: "5th Feb 2016",
    cost: 35,
    rider_id: "RD0066",
    rating: 3
  },
  {
    # DR0004,5th Feb 2016,20,RD0073,5
    driver_id: "DR0004",
    date: "5th Feb 2016",
    cost: 20,
    rider_id: "RD0073",
    rating: 5
  },
  {
    # DR0001,5th Feb 2016,45,RD0003,2
    driver_id: "DR0001",
    date: "5th Feb 2016",
    cost: 45,
    rider_id: "RD0003",
    rating: 2
  }
]

########################################################
# Step 4: Total Drivers Earnings and Number of Rides

# Use an iteration block to print driver's total rides and money made

drivers = {}
# e.g. drivers = driver1 => {tot_rides => 0, tot_earning => 0}, driver2 => {}

rides.each do |ride|
  # does the driver found in the rides already exist
  if !drivers.keys.include? ride[:driver_id]
    drivers.merge!(ride[:driver_id] => { :tot_rides => 0, :tot_earning => 0 })
  end

  # iterates over new driver hash and counts total rides and total earnings for each
  drivers.each do |driver, totals|
    case ride[:driver_id]
    when driver
      totals[:tot_rides] += 1
      totals[:tot_earning] += ride[:cost]
    end
  end
end

puts "The total number of rides given by each driver:"

drivers.each do |driver, totals|
print "#{driver} gave #{totals[:tot_rides]} making $#{totals[:tot_earning]}"
puts " from those rides."
end
