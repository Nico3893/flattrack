FlatPhoto.destroy_all
Contract.destroy_all
Transaction.destroy_all
TransactionCategory.destroy_all
Task.destroy_all
TaskCategory.destroy_all
Flat.destroy_all
User.destroy_all
Company.destroy_all

Company.create!( name: 'Immostar')
User.create!( name: "Frank Goldberg", email: "Frank@gmail.com", password: "123456", company: Company.first )
Flat.create!( address: "Rudi-Dutschke-Strasse 26, 10969 Berlin", area: 85, rooms: 3, parking_space: 2, company: Company.first )
TaskCategory.create!( name: "Maintenance" )
Task.create!( category: TaskCategory.first, title: "Send Plumber", description: "Appointment needs to be coordinated with tenant", company: Company.first )
TransactionCategory.create!( name: "Inventory" )
Transaction.create!( flat: Flat.first, amount: 1250, date: Date.today, category: TransactionCategory.first, description: "Firefighter operation", is_expense: true, company: Company.first )
Contract.create!( flat: Flat.first, start_date: Date.today - 10, end_date: Date.today + 11, monthly_rent: 800 )
pic1 = FlatPhoto.create!( flat: Flat.first, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563270687/flattrack/Rudi2_qfdzxv.jpg" )
pic2 = FlatPhoto.create!( flat: Flat.first, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563270687/flattrack/Rudi3_jjbrvm.jpg" )
pic3 = FlatPhoto.create!( flat: Flat.first, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563270687/flattrack/Rudi4_pv12ye.jpg" )
pic4 = FlatPhoto.create!( flat: Flat.first, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563270687/flattrack/Rudi5_itk8ae.jpg" )
pic5 = FlatPhoto.create!( flat: Flat.first, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563270685/flattrack/Rudi1_rolnk1.jpg" )






