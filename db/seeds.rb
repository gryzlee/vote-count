# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
r1 = Role.create({name: "User", description: "Can read content and generate raports"})
r2 = Role.create({name: "SuperUser", description: "Can read and create content. Can update and destroy own content"})
r3 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})
 
u1 = User.create({name: "Zabbka", email: "sally@example.com", password: "abcde", password_confirmation: "abcde", role_id: r1.id})
u2 = User.create({name: "Gryzlee", email: "sue@example.com", password: "gryzlee", password_confirmation: "gryzlee", role_id: r2.id})
u3 = User.create({name: "Japa", email: "kev@example.com", password: "japko", password_confirmation: "japko", role_id: r2.id})
u4 = User.create({name: "Janusz", email: "jack@example.com", password: "admin123", password_confirmation: "admin123", role_id: r3.id})