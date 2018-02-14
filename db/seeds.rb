if AdminUser.count < 1
	AdminUser.create(email: 'akhtarl038@gmail.com', first_name: 'Akhtar', last_name: 'Ali', password: 'silver61')
end

if User.count < 1

	(1..200).each do |n|
		first_name = Faker::Name.first_name
		last_name = Faker::Name.last_name
		phone_number = Faker::PhoneNumber.phone_number
		address = Faker::Address.city
		User.create(first_name: first_name, last_name: last_name,
					phone_number: phone_number, address: address
				   ) 
	end
end