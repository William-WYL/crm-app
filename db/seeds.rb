
unless AdminUser.find_by(email: 'admin@example.com')
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end


Customer.destroy_all

Customer.create!([
  { full_name: "John Doe", phone_number: "1234567890", email_address: "john@example.com", notes: "Regular customer" },
  { full_name: "Jane Smith", phone_number: "0987654321", notes: "Prefers email communication" },
  { full_name: "Bob Johnson", phone_number: "5551234567", email_address: "bob@example.com" },
  { full_name: "Alice Brown", phone_number: "4445556666", notes: "New customer" },
  { full_name: "Charlie Davis", email_address: "charlie@example.com", notes: "VIP client" }
])