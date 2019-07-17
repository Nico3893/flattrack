puts 'Destroy everything...'
FlatPhoto.destroy_all
Contract.destroy_all
Transaction.destroy_all
TransactionCategory.destroy_all
Task.destroy_all
TaskCategory.destroy_all
Flat.destroy_all
User.destroy_all
Company.destroy_all

# Original Seeds
puts 'Creating company...'
Company.create!( name: 'Immostar')
puts 'Creating user...'
User.create!( name: "Frank Goldberg", email: "Frank@gmail.com", password: "123456", company: Company.first, photo: "" )
puts 'Creating flat...'
Flat.create!( address: "Rudi-Dutschke-Strasse 26, 10969 Berlin", area: 85, rooms: 3, parking_space: 2, monthly_rent: 800, company: Company.first )
puts 'Creating task category...'
TaskCategory.create!( name: "Maintenance" )
puts 'Creating task...'
Task.create!( category: TaskCategory.first, title: "Send Plumber", description: "Appointment needs to be coordinated with tenant", company: Company.first, flat: Flat.first, user: User.first )
puts 'Creating transaction category...'
TransactionCategory.create!( name: "Inventory" )
puts 'Creating transaction...'
Transaction.create!( flat: Flat.first, amount: 1250, date: Date.today, category: TransactionCategory.first, description: "Firefighter operation", is_expense: true, company: Company.first )
puts 'Creating contract...'
Contract.create!( flat: Flat.first, start_date: Date.today - 10, end_date: Date.today + 11, monthly_rent: 800 )
puts 'Creating 5 flat photos...'
pic1 = FlatPhoto.create!( flat: Flat.first, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563270687/flattrack/Rudi2_qfdzxv.jpg" )
pic2 = FlatPhoto.create!( flat: Flat.first, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563270687/flattrack/Rudi3_jjbrvm.jpg" )
pic3 = FlatPhoto.create!( flat: Flat.first, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563270687/flattrack/Rudi4_pv12ye.jpg" )
pic4 = FlatPhoto.create!( flat: Flat.first, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563270687/flattrack/Rudi5_itk8ae.jpg" )
pic5 = FlatPhoto.create!( flat: Flat.first, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563270685/flattrack/Rudi1_rolnk1.jpg" )

puts "Test Seeds finished succesfully!!!"

# Fancy Seed Company
puts 'Creating company...'
company1 = Company.create!( name: 'Wayne Enterprises')

# Fancy Seed User
puts 'Creating users...'
u1 = User.create!( name: "Bruce Wayne", email: "bruce@wayne.com", password: "123456", company: company1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563375046/flattrack/user_photos/user_photo_bruce_wayne_sotz0m.jpg")
u2 = User.create!( name: "Tony Stark", email: "tony@stark.com", password: "123456", company: company1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563375132/flattrack/user_photos/user_photo_tony_stark_rolgho.jpg")
u3 = User.create!( name: "Peter Parker", email: "peter@parker.com", password: "123456", company: company1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563375196/flattrack/user_photos/user_photo_peter_parker_xy8gq6.jpg")
u4 = User.create!( name: "Steve Rogers", email: "steve@rogers.com", password: "123456", company: company1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563375379/flattrack/user_photos/user_photo_steve_rogers_fjkl89.jpg")

# Fancy Seed Flat
# 1 Friends: Monica's flat
puts 'Creating flat...'
f1 = Flat.create!( address: "Stresemannstraße 123, 10117 Berlin", area: 140, rooms: 4, parking_space: 0, company: company1, monthly_rent: 800, comment: "many house parties, problems with neighbors in the past", address_specification: "apartment 19, 4th floor" )

# 2 How I met your mother: Ted and Marshall's flat
puts 'Creating flat...'
f2 = Flat.create!( address: "Rudi-Dutschke-Straße 23, 10969 Berlin", area: 85, rooms: 3, parking_space: 3, company: company1, monthly_rent: 800 )
# 3 How I mt your mother: Barney's flat
puts 'Creating flat...'
f3 = Flat.create!( address: "Friedrichstraße 206, 10969 Berlin", area: 85, rooms: 3, parking_space: 1, company: company1, monthly_rent: 800 )
# 4 Sex and the City: Carrie's flat
puts 'Creating flat...'
f4 = Flat.create!( address: "Rudi-Dutschke-Straße 19-17, 10969 Berlin", area: 85, rooms: 3, parking_space: 2, company: company1, monthly_rent: 800 )
# 5 New Girl: Nick, Jess, Schmidt and Winston's flat
puts 'Creating flat...'
f5 = Flat.create!( address: "Friedrichstraße 48-49, 10117 Berlin", area: 85, rooms: 3, parking_space: 2, company: company1, monthly_rent: 800 )
# 6 Gossip Girl: The Humphrey's loft
puts 'Creating flat...'
f6 = Flat.create!( address: "Charlottenstraße 77-80, 10117 Berlin", area: 85, rooms: 3, parking_space: 1, company: company1, monthly_rent: 800 )
# 7 Gossip Girl: The VanderWoodsen's flat
puts 'Creating flat...'
f7 = Flat.create!( address: "Bethlehemkirchplatz, 10117 Berlin", area: 85, rooms: 3, parking_space: 2, company: company1, monthly_rent: 800 )
# 8 Gossip Girl: The Waldorf's flat
puts 'Creating flat...'
f8 = Flat.create!( address: "Wilhelmstraße 114-117, 10963 Berlin ", area: 85, rooms: 3, parking_space: 3, company: company1, monthly_rent: 800 )
# 9 The Big Bang Theory: Sheldon and Leonard's flat
puts 'Creating flat...'
f9 = Flat.create!( address: "Ritterstraße 61-65, 10969 Berlin ", area: 85, rooms: 3, parking_space: 1, company: company1, monthly_rent: 800 )
# 10 Sherlock: Sherlock and John's flat 221B Baker Street
puts 'Creating flat...'
f10 = Flat.create!( address: "Niederkirchnerstraße 7, 10963 Berlin", area: 85, rooms: 3, parking_space: 1, company: company1, monthly_rent: 800 )
# 11 Two Broke Girls: Max and Caroline's flat
# puts 'Creating flat...'
# f11 = Flat.create!( address: "Wilhelmstraße 102, 10963 Berlin", area: 85, rooms: 3, parking_space: 0, company: company1 )
# # 12 Friends: Chandler and Joey's flat
# puts 'Creating flat...'
# f12 = Flat.create!( address: "Axel-Springer-Straße 58, 10117 Berlin", area: 85, rooms: 3, parking_space: 0, company: company1 )
# # 13 Breakfast at Tiffany’s: Holly Golightly’s Apartment
# puts 'Creating flat...'
# f13 = Flat.create!( address: "Leipziger Str. 3-4, 10117 Berlin", area: 85, rooms: 3, parking_space: 1, company: company1 )
# # 14 Mad Man: Don Draper's flat
# puts 'Creating flat...'
# f14 = Flat.create!( address: "Schützenstraße 51, 10117 Berlin", area: 85, rooms: 3, parking_space: 1, company: company1 )
# # 15 House of Cards: Adam Galloway's flat
# puts 'Creating flat...'
# f15 = Flat.create!( address: "Kronenstraße 1-61, 10117 Berlin", area: 85, rooms: 3, parking_space: 0, company: company1 )

# Fancy Photo Seeds
# for f1
puts 'Creating flat_photos...'
pic1 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359558/flattrack/f1_friends_livingroom_ewzure.png" )
pic2 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359558/flattrack/f1_friends_livingroom_digox5.jpg" )
pic3 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359557/flattrack/f1_friends_kitchen_hpf0um.jpg" )
pic4 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359557/flattrack/f1_friends_floorplan_fvfymm.jpg" )
#for f2

# Fancy Seed Category
#1
puts 'Creating task category...'
general = TaskCategory.create!( name: "general" )

#Fancy Seed Task
#1
puts 'Creating task...'
Task.create!( category: general, title: "Pipe Burst", description: "Send plumber, appointment needs to be coordinated with tenant", company: company1, flat: f1, status: "open", urgency: 3, user: u1 )
#2
puts 'Creating task...'
Task.create!( category: general, title: "Replace Sofa", description: "Check necessity, coordinate appointment with tenat ", company: company1, flat: f1, status: "resolved", urgency: 1, user: u2 )
#3
puts 'Creating task...'
Task.create!( category: general, title: "Crack in Bathroom tile", description: "Check necessity, coordinate appointment with tenat", company: company1, flat: f1, status: "open", urgency: 1, user: u3 )
#4
puts 'Creating task...'
Task.create!( category: general, title: "Monkey Poop on the carpet in livingroom", description: "Send cleaning crew, coordinate appointment with tenant", company: company1, flat: f1, status: "in progress", urgency: 2, user: u4 )
#5
puts 'Creating task...'
Task.create!( category: general, title: "Skirting bord lose, Bedroom 1", description: "Send craftsman, coordinate appointment wit tenant", company: company1, flat: f1, status: "open", urgency: 2, user: u2 )

# Fancy Seed Transaction Category
#1
puts 'Creating transaction categories...'
furniture = TransactionCategory.create!( name: "furniture cost" )
onetime = TransactionCategory.create!( name: "onetime expenses" )
utilities = TransactionCategory.create!( name: "utilities" )
rent = TransactionCategory.create!( name: "rent" )

# Fancy Seed Transaction
#1
puts 'Creating transactions...'
Transaction.create!( flat: f1, amount: 1250, date: Date.today, category: onetime, description: "Firefighter operation", is_expense: true, company: company1 )
Transaction.create!( flat: f1, amount: 100, date: Date.today, category: furniture, description: "water cooker", is_expense: true, company: company1 )
Transaction.create!( flat: f1, amount: 100, date: Date.today, category: utilities, description: "flat 1, July 2019", is_expense: true, company: company1 )
Transaction.create!( flat: f1, amount: 800, date: Date.today, category: rent, description: "flat 1, July 2019", is_expense: false, company: company1 )
Transaction.create!( flat: f1, amount: 800, date: Date.today, category: rent, description: "flat 1, August 2019", is_expense: false, company: company1 )

# Fancy Seed Contract
puts 'Creating contract...'
Contract.create!( flat: f1, start_date: Date.today - 10, end_date: Date.today + 90, monthly_rent: 800 )


# 5-6 tasks für dashboard für 1 Wohnung mit allen Status, 6 KPI Boxes, 5 Wohnungen mit Adresse und sonst. Variablen, 1 Wohnung mit add. comment und address-specification, contract for 1 flat, transactions for all categories for 1 flat,
# transaction_categories: rent, utilities, onetime expenses, furniture cost
# task-category: general
# users mit photos
