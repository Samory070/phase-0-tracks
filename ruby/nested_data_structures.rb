
car_lot = {
  'Honda' => {
    'Sedan' => [  'Civic',  'Accord', 'Clarity'],
    'SUV' => [ 'Pilot', 'HVR'],
    'Supercar' => ['NSX']
    },
  'Chevy' => {
    'Truck' => [ 'Silverado', 'Colorado'],
  'Sedan' => ['Malibu', 'SS']
  },
  'Suburu' => {
    'Sedan' => [ 'Legacy', 'WRX'], 
    'Hatchbach' => ['Crosstrek', 'Outback', 'Forester']
  }
}

car_lot['Honda']['Sedan'][1]

# car_lot.each do |car|
#   if car_lot['Honda'] == ['Sedan']
#     puts['Honda']['Sedan']
#   end
# end