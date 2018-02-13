user = User.new(
  first_name: 'first_name',
  last_name: 'last_name',
  email: 'user@example.com',
  phone: '12345687',
  address: 'IT park',
  city: 'Indore',
  state: 'MP',
  zip: '452001',
  country: 'IN',
  password: '12345678',
  password_confirmation: '12345678'
)

user.save
