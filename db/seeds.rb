puts 'Destroy everything...'
Inventory.destroy_all
InventoryCategory.destroy_all
FlatPhoto.destroy_all
Contract.destroy_all
Transaction.destroy_all
TransactionCategory.destroy_all
Task.destroy_all
TaskCategory.destroy_all
Flat.destroy_all
User.destroy_all
Company.destroy_all


# Fancy Seed Company
puts 'Creating company...'
company1 = Company.create!( name: 'Wayne Enterprises') # does it need a created_at date
company1.save

# Fancy Seed User
puts 'Creating users...'
u1 = User.create!( name: "Christina Gudat", email: "christina@gudat.com", password: "123456", company: company1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563533337/flattrack/user_photos/user_christina_gudat_cx8ndp.jpg")
u2 = User.create!( name: "Christoph Busse", email: "christoph@busse.com", password: "123456", company: company1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563533412/flattrack/user_photos/Busse_gro%C3%9F_twetuw.jpg")
u3 = User.create!( name: "Chris Hägner", email: "chris@haegner.com", password: "123456", company: company1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563533337/flattrack/user_photos/user_chis_h%C3%A4gner_ocfdcu.jpg")
u4 = User.create!( name: "Nicolas Eberhardt", email: "nicolas@eberhardt.com", password: "123456", company: company1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563533337/flattrack/user_photos/user_nicolas_erberhardt_k2tode.jpg")

# Fancy Seed Flat
# 1 Friends: Monica's flat
puts 'Creating flat...'
f1 = Flat.create!( address: "Stresemannstraße 123, 10117 Berlin", area: 120, rooms: 3, parking_space: 0, company: company1, monthly_rent: 1750, comment: "Flatshare for two Young Professionals. 90's interior concept. Blue accent walls and generous living room and big balcony.")
image1 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359558/flattrack/f1_friends_livingroom_ewzure.png" )
image2 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359558/flattrack/f1_friends_livingroom_digox5.jpg" )
image3 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359557/flattrack/f1_friends_kitchen_hpf0um.jpg" )
image4 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359557/flattrack/f1_friends_floorplan_fvfymm.jpg" )

# 2 How I met your mother: Ted and Marshall's flat
puts 'Creating flat...'
f2 = Flat.create!( address: "Stresemannstraße 120, 10117 Berlin", area: 140, rooms: 4, parking_space: 0, company: company1, monthly_rent: 2000, comment: "Flatshare for two Young Professionals. Interior concept from the 2000's Open fire place. Step inside apartment, therefore not barrier-free.", address_specification: "apartment 19, 4th floor" )
image5 = FlatPhoto.create!( flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377238/flattrack/f2_himym_livingroom_empty_rngnmy.jpg" )
image6 = FlatPhoto.create!( flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377238/flattrack/f2_himym_livingroom_hs7zvn.jpg" )
image7 = FlatPhoto.create!( flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377238/flattrack/f2_himym_floorplan_lmh2cx.jpg" )
image6 = FlatPhoto.create!( flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377238/flattrack/f2_himym_livingroom_hs7zvn.jpg" )
image7 = FlatPhoto.create!( flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377238/flattrack/f2_himym_floorplan_lmh2cx.jpg" )

# 3 Sex and the City: Carrie's flat
puts 'Creating flat...'
f3 = Flat.create!( address: "Friedrichstraße 206, 10969 Berlin", area: 50, rooms: 1, parking_space: 0, company: company1, monthly_rent: 800, comment: "Single apartment. 90's Manhatten interior design. It's not allowed to pierce the walls. Shoe storage in the oven")
image8 = FlatPhoto.create!( flat: f3, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377984/flattrack/f3_satc_bedroom_stkhao.jpg" )
image9 = FlatPhoto.create!( flat: f3, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377984/flattrack/f3_satc_entrance_a9ous4.jpg" )
image10 = FlatPhoto.create!( flat: f3, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377983/flattrack/f3_satc_hallway_liu9bh.jpg" )
image11 = FlatPhoto.create!( flat: f3, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377983/flattrack/f3_satc_livingroom_x2nphc.jpg" )
image12 = FlatPhoto.create!( flat: f3, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377983/flattrack/f3_satc_floorplan_sq0nph.jpg" )

# 4 How I met your mother: Barney's flat
puts 'Creating flat...'
f4 = Flat.create!( address: "Rudi-Dutschke-Straße 19-17, 10969 Berlin", area: 80, rooms: 2, parking_space: 2, company: company1, monthly_rent: 1200, comment: "Bro Special Edition, including Storm Trooper and walk-in suit wardrobe and two 300-inch plasma-screen TVs from Japan" )
image13 = FlatPhoto.create!( flat: f4, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379087/flattrack/f4_himym_livingroom_close_oqrr2n.jpg" )
image14 = FlatPhoto.create!( flat: f4, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379087/flattrack/f4_himym_livingroom_so2jyv.jpg" )
image15 = FlatPhoto.create!( flat: f4, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379087/flattrack/f4_himym_bedroom_vib9wq.jpg" )

# 5 New Girl: Nick, Jess, Schmidt and Winston's flat
puts 'Creating flat...'
f5 = Flat.create!( address: "Friedrichstraße 48-49, 10117 Berlin", area: 1500, rooms: 5, parking_space: 2, company: company1, monthly_rent: 2600, comment: "Loft flatshare ideal for 4 young professionals, generous living room, open kitchen, brick stone walls." )
image16 = FlatPhoto.create!( flat: f5, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379958/flattrack/f5_new_girl_entrance_eiqill.jpg" )
image17 = FlatPhoto.create!( flat: f5, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379958/flattrack/f5_new_girl_lingingroom_angle_jd0cfy.jpg" )
image18 = FlatPhoto.create!( flat: f5, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379957/flattrack/f5_new_girl_livingroom_cpjqto.jpg" )
image19 = FlatPhoto.create!( flat: f5, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379957/flattrack/f5_new_girl_bedroom_zzimjy.jpg" )
image20 = FlatPhoto.create!( flat: f5, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379957/flattrack/f5_newgirl_floorplan_gsk1aq.jpg" )
# 6 Gossip Girl: The Humphrey's loft
puts 'Creating flat...'
f6 = Flat.create!( address: "Charlottenstraße 77-80, 10117 Berlin", area: 120, rooms: 4, parking_space: 1, company: company1, monthly_rent: 1300, comment: "Brooklyn Artsy Loft, brick stone walls, visible steal beams, fire escape stairs, 3 bedrooms flatshare or family home", address_specification: "3rd floor" )
image21 = FlatPhoto.create!( flat: f6, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563381855/flattrack/f6_gg_entrance_dmawly.jpg" )
image22 = FlatPhoto.create!( flat: f6, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563381855/flattrack/f6_gg_hallway_qeb9ku.jpg" )
image23 = FlatPhoto.create!( flat: f6, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563381855/flattrack/f6_gg_dining_room_wso8vi.jpg" )
image24 = FlatPhoto.create!( flat: f6, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563381855/flattrack/f6_gg_floorplan_ccycpu.jpg" )


# 7 Gossip Girl: The VanderWoodsen's flat
puts 'Creating flat...'
f7 = Flat.create!( address: "Bethlehemkirchplatz 3, 10117 Berlin", area: 130, rooms: 3, parking_space: 2, company: company1, monthly_rent: 2700, comment: "Representable Manhattan Moder Art Deleuxe for sophisticated entertainment, maisonette, light colour concept with red as accent colour" )
image25 = FlatPhoto.create!( flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563382707/flattrack/f7_gg_livingroom2_kndbhl.jpg" )
image26 = FlatPhoto.create!( flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563382707/flattrack/flat7_gg_bedroom_nsxc9b.jpg" )
image27 = FlatPhoto.create!( flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563382706/flattrack/f7_gg_diningroom_doxfq3.jpg" )
image28 = FlatPhoto.create!( flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563382707/flattrack/f7_gg_livingroom_zrwdiu.jpg" )

# 8 Gossip Girl: The Waldorf's flat
puts 'Creating flat...'
f8 = Flat.create!( address: "Wilhelmstraße 114-117, 10963 Berlin ", area: 125, rooms: 3, parking_space: 3, company: company1, monthly_rent: 3700, comment: "French Deluxe with representable staircase, sophisticated entertaining is possible , maisonete penthouse, marble columns", address_specification: "Penthouse" )
image29 = FlatPhoto.create!( flat: f8, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563439983/flattrack/f8_gg_staircase_yrbp2j.jpg" )
image30 = FlatPhoto.create!( flat: f8, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563439983/flattrack/f8_gg_bedroom_sxchw0.jpg" )
image31 = FlatPhoto.create!( flat: f8, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563439983/flattrack/f8_gg_livingroom_lqrmps.jpg" )
image32 = FlatPhoto.create!( flat: f8, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563439983/flattrack/f8_gg_diningroom_l163e9.jpg" )

# 9 The Big Bang Theory: Sheldon and Leonard's flat
puts 'Creating flat...'
f9 = Flat.create!( address: "Ritterstraße 61-65, 10969 Berlin ", area: 90, rooms: 3, parking_space: 1, company: company1, monthly_rent: 850, comment: "Ideal for two young professionals, open kitchen, elevator, Geek Package including DNA-statue, photographs of galyxies and nebulae" )
image33 = FlatPhoto.create!( flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563440658/flattrack/f9_bbt_livingroom_zenai8.jpg" )
image34 = FlatPhoto.create!( flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563440658/flattrack/f9_bbt_floorplan_o1xhjc.jpg" )
image35 = FlatPhoto.create!( flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563440658/flattrack/f9_bbt_floorplan_3d_ukopxo.jpg" )
image36 = FlatPhoto.create!( flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563440658/flattrack/f9_bbt__pdpspg.jpg" )
image37 = FlatPhoto.create!( flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563440658/flattrack/sub-buzz-4238-1561396536-1_q73fex.jpg" )

# 10 Sherlock: Sherlock and John's flat 221B Baker Street
puts 'Creating flat...'
f10 = Flat.create!( address: "Niederkirchnerstraße 7, 10963 Berlin", area: 70, rooms: 2, parking_space: 1, company: company1, monthly_rent: 800, comment: "English shabby chic, for two adults, narrow staircase, cozy (dark), fully equipped tea station, lavish persian rugs ", address_specification: "alternative address 221B Bakerstreet" )
image38 = FlatPhoto.create!( flat: f10, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442172/flattrack/f10_sherlock_entrance_hq6yyl.jpg" )
image39 = FlatPhoto.create!( flat: f10, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442172/flattrack/f10_sherlock_livingroom2_dpyicf.jpg" )
image40 = FlatPhoto.create!( flat: f10, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442172/flattrack/f10_sherlock_staircase_dwipyg.jpg" )
image41 = FlatPhoto.create!( flat: f10, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442172/flattrack/f10_sherlock_livingroom_coz0wd.jpg" )

# 11 Two Broke Girls: Max and Caroline's flat
puts 'Creating flat...'
f11 = Flat.create!( address: "Wilhelmstraße 102, 10963 Berlin", area: 70, rooms: 3, parking_space: 0, company: company1, monthly_rent: 750, comment: "Open concrete beams, shabby chic, colourful concept, ideal for two people" )
image42 = FlatPhoto.create!( flat: f11, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442438/flattrack/f11_tbg_livingroom_e0bxcl.png" )
image43 = FlatPhoto.create!( flat: f11, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442438/flattrack/f11_tbg_kitchen_gf12p9.png" )
image44 = FlatPhoto.create!( flat: f11, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442438/flattrack/f11_tbg_bedroom_j1woqf.jpg" )
image45 = FlatPhoto.create!( flat: f11, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442438/flattrack/f11_2bg_floorplan_ddom1u.png" )

# 12 Friends: Chandler and Joey's flat
puts 'Creating flat...'
f12 = Flat.create!( address: "Axel-Springer-Straße 58, 10117 Berlin", area: 95, rooms: 3, parking_space: 0, company: company1, monthly_rent: 1650, comment: "Target: two young professionals, 90's chic, table soccer, small open kitchen" )
image46 = FlatPhoto.create!( flat: f12, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442884/flattrack/f12_friends_livingroom_wtbyty.jpg" )
image47 = FlatPhoto.create!( flat: f12, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442884/flattrack/f12_friends_kitchen_nfaale.jpg" )
image48 = FlatPhoto.create!( flat: f12, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442884/flattrack/f12_friends_livingroom2_atqki7.jpg" )
image49 = FlatPhoto.create!( flat: f12, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442884/flattrack/f12_friends_livingroom3_efnd97.jpg" )
image50 = FlatPhoto.create!( flat: f12, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442884/flattrack/f1_friends_floorplan_yz7wfj.jpg" )

# 13 Breakfast at Tiffany’s: Holly Golightly’s Apartment
puts 'Creating flat...'
f13 = Flat.create!( address: "Leipziger Str. 3-4, 10117 Berlin", area: 45, rooms: 1, parking_space: 1, company: company1, monthly_rent: 770, comment: "Classy 60's, 1 Person, narrow stairs, no elevator, black stone floor, white walls, pink accents, zebra fur, ", address_specification: "1st floor" )
image51 = FlatPhoto.create!( flat: f13, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443434/flattrack/f13_breakfast_livingroom_x4kqqq.jpg" )
image52 = FlatPhoto.create!( flat: f13, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443434/flattrack/f13_breakfast_entrance_sbajsl.jpg" )
image53 = FlatPhoto.create!( flat: f13, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443434/flattrack/f13_breakfast_floorplan_uhw0i6.jpg" )


# 14 Mad Man: Don Draper's flat
puts 'Creating flat...'
f14 = Flat.create!( address: "Schützenstraße 51, 10117 Berlin", area: 150, rooms: 3, parking_space: 1, company: company1, monthly_rent: 2775, comment: "60's Deluxe, earthy tones, smoking is permitted, big balcony, fully equipped bar" )
image54 = FlatPhoto.create!( flat: f14, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443755/flattrack/f14_mad_man_livingroom_oko2by.jpg" )
image55 = FlatPhoto.create!( flat: f14, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443754/flattrack/f14_mad_man_hallway_ifzfa3.jpg" )
image56 = FlatPhoto.create!( flat: f14, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443754/flattrack/f14_mad_man_diningroom_kogurw.jpg" )
image57 = FlatPhoto.create!( flat: f14, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443755/flattrack/f14_mad_men_floorplan_wb5sww.jpg" )

# Fancy Seed Category
#1 General
puts 'Creating task category...'
#maintenance = TaskCategory.create!( name: "Maintenance" )
general = TaskCategory.create!( name: "General" )
maintenance = TaskCategory.create!( name: "Maintenance" )
restocking = TaskCategory.create!( name: "Restocking" )
furnishing = TaskCategory.create!( name: "Furnishing" )
repair = TaskCategory.create!( name: "Repair" )

#Fancy Seed Task  # add restocking task and more furnishing tasks
#1
puts 'Creating task...'
t1 = Task.create!( category: repair, title: "Pipe Burst", description: "Send plumber, appointment needs to be coordinated with tenant", company: company1, flat: f1, status: "open", urgency: 3, user: u1 )
#2
puts 'Creating task...'
t2 = Task.create!( category: furnishing, title: "Replace Sofa", description: "Check necessity, coordinate appointment with tenat ", company: company1, flat: f1, status: "resolved", urgency: 1, user: u2 )
#3
puts 'Creating task...'
t3 = Task.create!( category: maintenance, title: "Crack in Bathroom tile", description: "Check necessity, coordinate appointment with tenat", company: company1, flat: f1, status: "open", urgency: 1, user: u3 )
#4
puts 'Creating task...'
t4 = Task.create!( category: general, title: "Monkey Poop on the carpet in livingroom", description: "Send cleaning crew, coordinate appointment with tenant", company: company1, flat: f1, status: "in progress", urgency: 2, user: u4 )
#5
puts 'Creating task...'
t5 = Task.create!( category: repair, title: "Skirting bord lose, Bedroom 1", description: "Send craftsman, coordinate appointment with tenant", company: company1, flat: f1, status: "resolved", urgency: 2, user: u2)

puts 'Creating task...'
t6 = Task.create!( category: repair, title: "Elevator out of order", description: "Send craftsman", company: company1, flat: f9, status: "open", urgency: 2, user: u2 )

puts 'Creating task...'
t7 = Task.create!( category: general, title: "Blackout", description: "Look into the matter and fix it.", company: company1, flat: f9, status: "open", urgency: 3, user: u3 )

puts 'Creating task...'
t8 = Task.create!( category: maintenance, title: "Bullet holes in livingroom wall", description: "coordinate painter and tannant", company: company1, flat: f10, status: "open", urgency: 2, user: u2 )

puts 'Creating task...'
t9 = Task.create!( category: general, title: "Whiskey stain on the sofa", description: "fix, when opportunity arises", company: company1, flat: f14, status: "open", urgency: 1, user: u2)

puts 'Creating task...'
t10 = Task.create!( category: maintenance, title: "Burn hole in zebra fur", description: "coordinate insurance and tenant", company: company1, flat: f13, status: "in progress", urgency: 2, user: u3 )

puts 'Creating task...'
t11 = Task.create!( category: maintenance, title: "Chimney Sweep", description: "Coordinate with tenant and chimney sweeper", company: company1, flat: f9, status: "open", urgency: 2, user: u2 )

puts 'Creating task...'
t12 = Task.create!( category: repair, title: "Heating broken", description: "send caretaker to inspect, if serious problem coordinate craftsmen", company: company1, flat: f3, status: "in progress", urgency: 3, user: u1 )

puts 'Creating task...'
t12 = Task.create!( category: maintenance, title: "High heel marks in parquet floor", description: "educate tenants, fix at next opportunity", company: company1, flat: f7, status: "in progress", urgency: 1, user: u1 )

puts 'Creating task...'
t13 = Task.create!( category: repair, title: "Door bell broken", description: "send caretaker to fix", company: company1, flat: f3, status: "resolved", urgency: 2, user: u1 )

puts 'Creating task...'
t14 = Task.create!( category: restocking, title: "Replace Bath Towel", description: "Towel looks iffy", company: company1, flat: f3, status: "resolved", urgency: 2, user: u1 )

# Fancy Seed Contract
puts 'Creating contract...'
contract1 = Contract.create!( flat: f1, start_date: Date.today - 10, end_date: Date.today + 11, monthly_rent: 800 )

# Fancy Seed Transaction Category
#1
puts 'Creating transaction categories...'
furniture = TransactionCategory.create!( name: "furniture cost" )
onetime = TransactionCategory.create!( name: "onetime expenses" )
utilities = TransactionCategory.create!( name: "utilities" )
rent = TransactionCategory.create!( name: "rent" )

# Fancy Seed Transaction # add more transactions with different flats and categories
#1
puts 'Creating transactions...'
Transaction.create!( flat: f1, amount_cents: 7000, date: Date.today, category: onetime, description: "Extraordinary Heating Maintenance", is_expense: true, company: company1 )
Transaction.create!( flat: f1, amount_cents: 350, date: Date.today, category: furniture, description: "Kettle", is_expense: true, company: company1 )
Transaction.create!( flat: f1, amount_cents: 5405, date: Date.today, category: utilities, description: "flat 1, July 2019", is_expense: true, company: company1 )
Transaction.create!( flat: f1, amount_cents: 20000, date: Date.today, category: rent, description: "flat 1, July 2019", is_expense: false, company: company1 )
Transaction.create!( flat: f1, amount_cents: 20000, date: Date.today, category: rent, description: "flat 1, August 2019", is_expense: false, company: company1 )

Transaction.create!( flat: f2, amount_cents: 12050, date: Date.today, category: onetime, description: "Adding blue horn to interior", is_expense: true, company: company1 )
Transaction.create!( flat: f3, amount_cents: 1000, date: Date.today, category: furniture, description: "Sidetable", is_expense: true, company: company1 )
Transaction.create!( flat: f10, amount_cents: 1800, date: Date.today, category: utilities, description: "flat 10, July 2019", is_expense: true, company: company1 )
Transaction.create!( flat: f7, amount_cents: 27000, date: Date.today, category: rent, description: "flat 7, July 2019", is_expense: false, company: company1 )
Transaction.create!( flat: f9, amount_cents: 8500, date: Date.today, category: rent, description: "flat 9, August 2019", is_expense: false, company: company1 )


# Fancy Seed Contract
puts 'Creating contract...'
Contract.create!( flat: f1, start_date: Date.today - 10, end_date: Date.today + 90, monthly_rent: 800 )

# # Fancy Seed task Comments
# Comment.create!( task: t, owner: u, description: "")
# Comment.create!( task: t, owner: u, description: "")
# Comment.create!( task: t, owner: u, description: "")
# Comment.create!( task: t, owner: u, description: "")
# Comment.create!( task: t, owner: u, description: "")
# Comment.create!( task: t, owner: u, description: "")
# Comment.create!( task: t, owner: u, description: "")
# Comment.create!( task: t, owner: u, description: "")
# Comment.create!( task: t, owner: u, description: "")
# Comment.create!( task: t, owner: u, description: "")

# # Fancy Seeds Inventory Caregories
puts "creating inventory_categories"
bedroom = InventoryCategory.create!(name: "Bedroom")
kitchen = InventoryCategory.create!(name: "Kitchen")
livingroom = InventoryCategory.create!(name: "Living Room")
bathroom = InventoryCategory.create!(name:"Bathroom")

# Fancy Seeds Inventory
puts "creating inventory_categories"
Inventory.create!(category: kitchen, name: "TEFAL FV 4680 E3", historic_value: 33.99, book_value: 22.66, description: "flat iron", condition: "used", flat: f1)
Inventory.create!(category: bathroom, name: "PHILIPS HP8230/00 Haartrockner Schwarz (2100 Watt)", historic_value: 17.99, book_value: 11.99, description: "hair dryer", condition: "used", flat: f1)
Inventory.create!(category: kitchen, name: "PHILIPS SENSEO® HD 6556/00", historic_value: 77.99, book_value: 77.99 , description: "Coffee Machine", condition: "new", flat: f1)
Inventory.create!(category: bathroom, name: "VILEDA 09470 VIVA EXPRESS ECO BLAU Bügelbrett", historic_value: 39.99, book_value: 29.99 , description: "Ironing Board", condition: "used", flat: f1)
Inventory.create!(category: bedroom, name: "SONGESAND", historic_value: 179.00, book_value: 119.00 , description: "white wardrobe", condition: "scratces at the feet from vacuum cleaning", flat: f1)
Inventory.create!(category: livingroom, name: "NOT", historic_value: 13.99, book_value: 13.99 , description: "uplight", condition: "new", flat: f1)
Inventory.create!(category: bathroom, name: "VÅGSJÖN", historic_value: 6.99, book_value: 0.00, description: "Bath Towel", condition: "replace", flat: f1)
Inventory.create!(category: bedroom, name: "DVALA", historic_value: 24.99, book_value: 24.99 , description: "bedclothes 3 pieces", condition: "new", flat: f1)
Inventory.create!(category: kitchen, name: "MARTIN", historic_value: 21.99, book_value: 16.74, description: "chair", condition: "used", flat: f1)
Inventory.create!(category: kitchen, name: "MARTORP", historic_value: 29.99, book_value: 29.99, description: "cutlery 30 pieces", condition: "used", flat: f1)
Inventory.create!(category: kitchen, name: "KARCHER 125440 Jana 4-tlg. Kochgeschirr-Set (Edelstahl 18/8)", historic_value: 74.99, book_value: 59.99 , description: "cookware", condition: "used", flat: f1)
Inventory.create!(category: bathroom, name: "SHARP ES-GFB7164W3-DE Waschmaschine (7 kg, 1600 U/Min., A+++)", historic_value: 268, book_value: 238, description: "washing machine", condition: "used", flat: f3)
Inventory.create!(category: livingroom, name: "FORSÅ", historic_value: 12.99, book_value: 7.49, description: "lamp", condition: "used", flat: f2)
Inventory.create!(category: bathroom, name: "BLANKSJÖN", historic_value: 6.99, book_value: 0.00, description: "bath mat", condition: "replace", flat: f2)
Inventory.create!(category: livingroom, name: "KNIPPE", historic_value: 17.99, book_value: 11.99, description: "coat rack", condition: "used", flat: f2)
Inventory.create!(category: kitchen, name: "SVALKA", historic_value: 4.99, book_value: 2.49, description: "White wine glass", condition: "used", flat: f9)
Inventory.create!(category: livingroom, name: "DYNAN", historic_value: 59.80, book_value: 47.60, description: "white wardrobe with door", condition: "used", flat: f9)

