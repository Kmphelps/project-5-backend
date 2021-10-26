# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting old data..."

User.destroy_all
Feature.destroy_all
Assignment.destroy_all
Message.destroy_all

puts 
puts "Creating users..."
user1 = User.create(username: "Myles", password: "hi", avatar: "https://www.thesprucepets.com/thmb/UQGQnsC4r5lZwQNWUBzBPTD10R8=/2180x1226/smart/filters:no_upscale()/GettyImages-590608307-292e4188d7fa4d509652f067e57564f0.jpg")
user2 = User.create(username: "Kayla", password: "hi", avatar: "https://brooklinelabrescue.org/dev/wp-content/uploads/2019/07/Marley-Rescue-Ride-07-23.jpg")

puts 
puts "Creating features..."
feature1 = Feature.create(name: "Dashboard Widget", wireframes_link: "https://www.dashboardwidgetwireframes.com/", test_cases_link: "https://www.dashboardwidgettestcases.com/", need_access_resources: "Dashboard Widget Resources", test_framework: "Robot Framework", project_mgmt_resources: "See Jira", test_status: "In Progress", priority: "P1")
feature2 = Feature.create(name: "Login Functionality", wireframes_link: "https://www.loginwireframes.com/", test_cases_link: "https://www.logintestcases.com/", need_access_resources: "Login Resources", test_framework: "Robot Framework", project_mgmt_resources: "See Jira", test_status: "Done", priority: "P3")
feature3 = Feature.create(name: "Upload Portal", wireframes_link: "https://www.loginwireframes.com/", test_cases_link: "https://www.logintestcases.com/", need_access_resources: "Login Resources", test_framework: "Robot Framework", project_mgmt_resources: "See Jira", test_status: "Done", priority: "P3")
feature4 = Feature.create(name: "Message Widget", wireframes_link: "https://www.loginwireframes.com/", test_cases_link: "https://www.logintestcases.com/", need_access_resources: "Login Resources", test_framework: "Robot Framework", project_mgmt_resources: "See Jira", test_status: "Done", priority: "P3")
feature5 = Feature.create(name: "Signup Widget", wireframes_link: "https://www.loginwireframes.com/", test_cases_link: "https://www.logintestcases.com/", need_access_resources: "Login Resources", test_framework: "Robot Framework", project_mgmt_resources: "See Jira", test_status: "Done", priority: "P3")
feature6 = Feature.create(name: "Stripe Integration", wireframes_link: "https://www.loginwireframes.com/", test_cases_link: "https://www.logintestcases.com/", need_access_resources: "Login Resources", test_framework: "Robot Framework", project_mgmt_resources: "See Jira", test_status: "Done", priority: "P3")
feature7 = Feature.create(name: "Shopping Cart", wireframes_link: "https://www.loginwireframes.com/", test_cases_link: "https://www.logintestcases.com/", need_access_resources: "Login Resources", test_framework: "Robot Framework", project_mgmt_resources: "See Jira", test_status: "Done", priority: "P3")
feature8 = Feature.create(name: "Alerts", wireframes_link: "https://www.loginwireframes.com/", test_cases_link: "https://www.logintestcases.com/", need_access_resources: "Login Resources", test_framework: "Robot Framework", project_mgmt_resources: "See Jira", test_status: "Done", priority: "P3")

puts
puts "Creating assignments..."
assignment1 = Assignment.create(user_id: user1.id, feature_id: feature1.id)
assignment2 = Assignment.create(user_id: user1.id, feature_id: feature2.id)

puts 
puts "Creating messages..."
message1 = Message.create(user_id: user1.id, feature_id: feature1.id, message: "Hi! I have a question!")
message2 = Message.create(user_id: user1.id, feature_id: feature1.id, message: "Hi! I have an answer...")


puts
puts "Done seeding!"

