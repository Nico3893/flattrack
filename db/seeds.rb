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
User.create!( name: "Frank Goldberg", email: "Frank@gmail.com", password: "123456", company: Company.first )
puts 'Creating flat...'
Flat.create!( address: "Rudi-Dutschke-Strasse 26, 10969 Berlin", area: 85, rooms: 3, parking_space: 2, monthly_rent: 800, company: Company.first )
puts 'Creating task category...'
TaskCategory.create!( name: "Maintenance" )
puts 'Creating task...'
Task.create!( category: TaskCategory.first, title: "Send Plumber", description: "Appointment needs to be coordinated with tenant", company: Company.first, flat: Flat.first )
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

puts "Seeds finished succesfully!!!"

# Fancy Seed Company
puts 'Creating company...'
company1 = Company.create!( name: 'Wayne Enterprises')

# Fancy Seed User
puts 'Creating user...'
User.create!( name: "Bruce Wayne", email: "bruce@wayne.com", password: "123456", company: company1 )
# User.create!( name: "Frank Goldberg", email: "Frank@gmail.com", password: "123456", company: Company.first )

# Fancy Seed Flat
# 1 Friends: Monica's flat
puts 'Creating flat...'
f1 = Flat.create!( address: "Stresemannstraße 123, 10117 Berlin", area: 140, rooms: 4, parking_space: 0, company: company1 )

# 2 How I met your mother: Ted and Marshall's flat
puts 'Creating flat...'
f2 = Flat.create!( address: "Rudi-Dutschke-Straße 23, 10969 Berlin", area: 85, rooms: 3, parking_space: 3, company: company1 )
# 3 How I mt your mother: Barney's flat
puts 'Creating flat...'
f3 = Flat.create!( address: "Friedrichstraße 206, 10969 Berlin", area: 85, rooms: 3, parking_space: 1, company: company1 )
# 4 Sex and the City: Carrie's flat
puts 'Creating flat...'
f4 = Flat.create!( address: "Rudi-Dutschke-Straße 19-17, 10969 Berlin", area: 85, rooms: 3, parking_space: 2, company: company1 )
# 5 New Girl: Nick, Jess, Schmidt and Winston's flat
puts 'Creating flat...'
f5 = Flat.create!( address: "Friedrichstraße 48-49, 10117 Berlin", area: 85, rooms: 3, parking_space: 2, company: company1 )
# 6 Gossip Girl: The Humphrey's loft
puts 'Creating flat...'
f6 = Flat.create!( address: "Charlottenstraße 77-80, 10117 Berlin", area: 85, rooms: 3, parking_space: 1, company: company1 )
# 7 Gossip Girl: The VanderWoodsen's flat
puts 'Creating flat...'
f7 = Flat.create!( address: "Bethlehemkirchplatz, 10117 Berlin", area: 85, rooms: 3, parking_space: 2, company: company1 )
# 8 Gossip Girl: The Waldorf's flat
puts 'Creating flat...'
f8 = Flat.create!( address: "Wilhelmstraße 114-117, 10963 Berlin ", area: 85, rooms: 3, parking_space: 3, company: company1 )
# 9 The Big Bang Theory: Sheldon and Leonard's flat
puts 'Creating flat...'
f9 = Flat.create!( address: "Lindenstraße 34, ", area: 85, rooms: 3, parking_space: 1, company: company1 )
# 10 Sherlock: Sherlock and John's flat 221B Baker Street
puts 'Creating flat...'
f10 = Flat.create!( address: "Niederkirchnerstraße 7, 10963 Berlin", area: 85, rooms: 3, parking_space: 1, company: company1 )
# 11 Two Broke Girls: Max and Caroline's flat
puts 'Creating flat...'
f11 = Flat.create!( address: "Wilhelmstraße 102, 10963 Berlin", area: 85, rooms: 3, parking_space: 0, company: company1 )
# 12 Friends: Chandler and Joey's flat
puts 'Creating flat...'
f12 = Flat.create!( address: "Axel-Springer-Straße 58, 10117 Berlin", area: 85, rooms: 3, parking_space: 0, company: company1 )
# 13 Breakfast at Tiffany’s: Holly Golightly’s Apartment
puts 'Creating flat...'
f13 = Flat.create!( address: "Leipziger Str. 3-4, 10117 Berlin", area: 85, rooms: 3, parking_space: 1, company: company1 )
# 14 Mad Man: Don Draper's flat
puts 'Creating flat...'
f14 = Flat.create!( address: "Schützenstraße 51, 10117 Berlin", area: 85, rooms: 3, parking_space: 1, company: company1 )
# 15 House of Cards: Adam Galloway's flat
puts 'Creating flat...'
f15 = Flat.create!( address: "Kronenstraße 1-61, 10117 Berlin", area: 85, rooms: 3, parking_space: 0, company: company1 )

# Fancy Photo Seeds
# for f1
pic1 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359558/flattrack/f1_friends_livingroom_ewzure.png" )
pic2 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359558/flattrack/f1_friends_livingroom_digox5.jpg" )
pic3 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359557/flattrack/f1_friends_kitchen_hpf0um.jpg" )
pic4 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359557/flattrack/f1_friends_floorplan_fvfymm.jpg" )
#for f2

# Fancy Seed Category
#1
puts 'Creating task category...'
maintenance = TaskCategory.create!( name: "Maintenance" )

#Fancy Seed Task
#1
puts 'Creating task...'
Task.create!( category: maintenance, title: "Send Plumber", description: "Appointment needs to be coordinated with tenant", company: Company.first, flat: f1 )

# Fancy Seed Transaction Category
#1
puts 'Creating transaction category...'
TransactionCategory.create!( name: "Inventory" )

# Fancy Seed Transaction
#1
puts 'Creating transaction...'
Transaction.create!( flat: Flat.first, amount: 1250, date: Date.today, category: TransactionCategory.first, description: "Firefighter operation", is_expense: true, company: Company.first )

# Fancy Seed Contract
puts 'Creating contract...'
Contract.create!( flat: Flat.first, start_date: Date.today - 10, end_date: Date.today + 11, monthly_rent: 800 )
puts 'Creating 5 flat photos...'



