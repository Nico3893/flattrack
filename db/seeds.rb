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




# 5-6 tasks für dashboard für 1 Wohnung mit allen Status, 6 KPI Boxes, 5 Wohnungen mit Adresse und sonst. Variablen, 1 Wohnung mit add. comment und address-specification, contract for 1 flat, transactions for all categories for 1 flat,
# transaction_categories: rent, utilities, onetime expenses, furniture cost
# task-category: general
# users mit photos
