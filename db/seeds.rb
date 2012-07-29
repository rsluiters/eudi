# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if User.count == 0
  u=User.new
  u.first_name="Test"
  u.last_name="Admin"
  u.email="admin@sluiters.de"
  u.password="test"
  u.role=User::ROLE_ADMIN
  u.save!
end