
User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# can be managed form Active admin side as well

accesses = ["create", "update", "read", "destroy", "manage"]
accesses.each do |access|
  Access.create(name: access)
end


