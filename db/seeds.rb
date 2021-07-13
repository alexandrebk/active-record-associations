# This is where you can create initial data for your app.

Doctor.destroy_all
Intern.destroy_all


doctor = Doctor.new(
  first_name: "Dr Gregory",
  last_name: "House"
)
doctor.save!

doctor = Doctor.new(
  first_name: "Dr Bob",
  last_name: "Grey"
)
doctor.save!

doctor = Doctor.new(
  first_name: "Dr David",
  last_name: "Banner"
)
doctor.save!

puts "#{Doctor.count} doctors created"
